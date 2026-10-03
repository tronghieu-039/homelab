#!/bin/bash
echo "======================================="
echo "📦 BẮT ĐẦU SAO LƯU DỮ LIỆU HOMELAB"
echo "======================================="

# 1. Định nghĩa nơi lưu và tên file nén (kèm thời gian thực)
BACKUP_DIR="/home/hieu/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/homelab_backup_$TIMESTAMP.tar.gz"

# 2. Tạo thư mục chứa backup nếu chưa có
mkdir -p $BACKUP_DIR

# 3. Nén thư mục docker và file log an ninh
echo "⏳ Đang nén dữ liệu... vui lòng đợi..."
tar -czf $BACKUP_FILE -C /home/hieu docker security_audit.log

echo "✅ ĐÃ XONG! File dự phòng được lưu an toàn tại:"
ls -lh $BACKUP_FILE
echo "======================================="
