
SCRIPT_DIR=$(dirname "$(realpath "$0")")
TARGET_DIR="$HOME/Library/Developer/Xcode/UserData/CodeSnippets"

if [ ! -d "$TARGET_DIR" ]; then
    echo "错误：目标文件夹 '$TARGET_DIR' 不存在"
    exit 1
fi

# 使用find移动文件
find "$SCRIPT_DIR" -mindepth 1 -maxdepth 1 \
  -exec echo "正在移动: {}" \; \
  -exec mv {} "$TARGET_DIR/" \;

echo "====================="
echo "移动完成"
echo "目标路径: $SCRIPT_DIR"
echo "后续的仓库也需要以目标路径为准"
echo "====================="
exit 0
