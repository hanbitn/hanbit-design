#!/usr/bin/env bash
# hanbit-design 스킬 설치 스크립트
# 사용법: ./install.sh
# 또는 원격 설치: bash <(curl -fsSL <RAW_URL>/install.sh)

set -e

SKILL_NAME="hanbit-design"
SKILL_DIR="$HOME/.claude/skills/$SKILL_NAME"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "📦 한빛 디자인 시스템 스킬 설치 중..."

# 기존 설치 백업
if [ -d "$SKILL_DIR" ]; then
  BACKUP="$SKILL_DIR.bak.$(date +%Y%m%d%H%M%S)"
  mv "$SKILL_DIR" "$BACKUP"
  echo "   기존 설치 백업: $BACKUP"
fi

# 스킬 디렉토리 생성
mkdir -p "$SKILL_DIR/references"

# SKILL.md 복사
cp "$SCRIPT_DIR/SKILL.md" "$SKILL_DIR/SKILL.md"

# references/ 전체 복사 (심링크는 dereference 해서 실제 파일로)
cp -L "$SCRIPT_DIR/references/colors.md"         "$SKILL_DIR/references/colors.md"
cp -L "$SCRIPT_DIR/references/components.md"     "$SKILL_DIR/references/components.md"
cp -L "$SCRIPT_DIR/references/icons.md"          "$SKILL_DIR/references/icons.md"
cp -L "$SCRIPT_DIR/references/full-reference.md" "$SKILL_DIR/references/full-reference.md"

echo "✅ 설치 완료: $SKILL_DIR"
echo ""
echo "스킬이 활성화되면 UI 작업 시 자동으로 한빛 디자인 시스템이 적용됩니다."
echo "Figma: https://www.figma.com/design/usRZn9VKhXQ9MedDWw1u57/"
