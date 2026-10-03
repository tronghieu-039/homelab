#!/bin/bash
echo "======================================="
echo "🛡️  BÁO CÁO AN NINH HỆ THỐNG - HOMELAB 🛡️"
echo "======================================="
echo "⏰ Thời gian quét: $(date)"
echo ""

echo ">>> 1. TRẠNG THÁI TƯỜNG LỬA (UFW):"
sudo ufw status numbered
echo ""

echo ">>> 2. DANH SÁCH IP BỊ KHÓA (FAIL2BAN - SSH):"
sudo fail2ban-client status sshd
echo ""

echo ">>> 3. TÀI NGUYÊN HỆ THỐNG (RAM):"
free -h
echo "======================================="
