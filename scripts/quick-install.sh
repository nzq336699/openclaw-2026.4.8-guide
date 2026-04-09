#!/bin/bash
# OpenClaw 30分钟快速安装脚本
# 作者：Claw司令

echo "🦞 OpenClaw 快速安装脚本"
echo "========================"

# 检查系统
echo "检查系统环境..."
if ! command -v git &> /dev/null; then
    echo "❌ 请先安装 Git"
    exit 1
fi

if ! command -v node &> /dev/null; then
    echo "❌ 请先安装 Node.js (v18+)"
    exit 1
fi

# 安装OpenClaw
echo "安装OpenClaw..."
git clone https://github.com/openclaw/openclaw.git
cd openclaw
npm install --legacy-peer-deps

# 基础配置
echo "基础配置..."
cp .env.example .env
mkdir -p skills config memory

echo "✅ 安装完成！"
echo "下一步："
echo "1. cd openclaw"
echo "2. openclaw gateway start"
echo "3. 访问 http://localhost:3000"
