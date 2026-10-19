#!/usr/bin/env bash
# 打包并发布 Thunderstore 格式的 mod 包
#
# 用法：
#   bash release.sh            # 只生成 dist/<name>-<version>.zip
#   bash release.sh --release  # 生成 zip 并创建 GitHub Release
#
# 版本号取自 manifest.json 的 version_number，发布前请先修改该文件并提交。

set -euo pipefail

cd "$(dirname "$0")"

command -v python >/dev/null 2>&1 || { echo "错误：未找到 python" >&2; exit 1; }

PACKAGE_NAME=$(basename "$PWD")
VERSION=$(python -I -c "import json;print(json.load(open('manifest.json',encoding='utf-8'))['version_number'])")
OUT="dist/${PACKAGE_NAME}-${VERSION}.zip"

mkdir -p dist

python -I - "$OUT" <<'PY'
import os
import sys
import zipfile

out = sys.argv[1]
required = ["manifest.json", "README.md", "CHANGELOG.md", "icon.png", "LICENSE"]
missing = [f for f in required if not os.path.isfile(f)]
if missing:
    sys.exit("Missing required files: " + ", ".join(missing))

files = list(required)
for root, _, names in os.walk("plugins"):
    for name in sorted(names):
        files.append(os.path.join(root, name).replace(os.sep, "/"))

with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as zf:
    for path in files:
        with open(path, "rb") as fh:
            zf.writestr(path, fh.read())

print(f"Created {out} ({os.path.getsize(out)} bytes, {len(files)} files)")
PY

if [[ "${1:-}" == "--release" ]]; then
    command -v gh >/dev/null 2>&1 || { echo "错误：未找到 gh，无法创建 Release" >&2; exit 1; }
    gh release create "v${VERSION}" "$OUT" --title "v${VERSION}" --generate-notes
else
    echo "如需创建 GitHub Release，运行：bash release.sh --release"
fi
