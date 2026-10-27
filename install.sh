#!/usr/bin/env bash
# hanbit-design 스킬 설치 스크립트
# 사용법: ./install.sh
# 또는 원격 설치: bash <(curl -fsSL <RAW_URL>/install.sh)

set -e

SKILL_NAME="hanbit-design"
SKILL_DIR="$HOME/.claude/skills/$SKILL_NAME"
# 백업은 skills/ 밖에 둔다 — skills/ 안에 두면 같은 이름의 스킬이 중복 로드된다
BACKUP_ROOT="$HOME/.claude/skill-backups"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "📦 한빛 디자인 시스템 스킬 설치 중..."

# 기존 설치 백업
if [ -d "$SKILL_DIR" ]; then
  mkdir -p "$BACKUP_ROOT"
  BACKUP="$BACKUP_ROOT/$SKILL_NAME.$(date +%Y%m%d%H%M%S)"
  mv "$SKILL_DIR" "$BACKUP"
  echo "   기존 설치 백업: $BACKUP"
fi

mkdir -p "$SKILL_DIR"

# 스킬 정의 + 전체 스펙
cp "$SCRIPT_DIR/SKILL.md"                "$SKILL_DIR/SKILL.md"
cp "$SCRIPT_DIR/hanbit-design-system.md" "$SKILL_DIR/hanbit-design-system.md"

# ① Theme 에셋 (아이콘·로고·일러스트)
cp -R "$SCRIPT_DIR/theme" "$SKILL_DIR/theme"
find "$SKILL_DIR/theme" -name .DS_Store -delete

echo "✅ 설치 완료: $SKILL_DIR"
echo "   에셋: $(find "$SKILL_DIR/theme" -type f | wc -l | tr -d ' ')개"
echo ""
echo "스킬이 활성화되면 UI 작업 시 자동으로 한빛 디자인 시스템이 적용됩니다."
echo "Figma: https://www.figma.com/design/usRZn9VKhXQ9MedDWw1u57/"
