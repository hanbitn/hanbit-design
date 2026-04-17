# 한빛 Design System 리포

한빛 디자인 시스템을 스킬로 배포하는 리포다.

- **스킬 정의**: [SKILL.md](./SKILL.md) — 핵심 원칙, 필수 CSS 변수, Semantic 가이드
- **소스 오브 트루스**: [hanbit-design-system.md](./hanbit-design-system.md) — 전체 262개 토큰 원본
- **카테고리별 상세**: [references/](./references/)
  - `colors.md` — 전체 Atomic 팔레트 + Semantic
  - `components.md` — Modal / Component / 브레이크포인트
  - `icons.md` — 아이콘·일러스트·로고
  - `full-reference.md` → `hanbit-design-system.md` 심링크

## 이 리포에서 UI 작업할 때

SKILL.md의 규칙을 그대로 적용한다. 필수 토큰은 SKILL.md에, 상세 값은 references/에서 찾는다.

## 유지보수 흐름

### 토큰 값 변경 (예: Primary 색상 조정)

1. `hanbit-design-system.md` 수정 (소스)
2. `references/colors.md`의 해당 값 업데이트
3. `SKILL.md`의 CSS 변수 블록에 포함된 값이면 거기도 업데이트
4. `./install.sh` 실행 → 전역 `~/.claude/skills/hanbit-design/`에 배포

### 새 카테고리 추가

1. `references/<category>.md` 파일 생성
2. `SKILL.md` 하단에 "→ references/<category>.md" 포인터 추가
3. `./install.sh` 실행

### 다른 리포에서 설치

```bash
git clone <repo-url> hanbit-design
cd hanbit-design
./install.sh
```

## 설계 원칙

- **SKILL.md는 가볍게** — 매번 로드되므로 ~100줄 이하 유지. 상세는 references/로 밀어낸다
- **references/는 카테고리별** — 색상 작업 시 아이콘까지 읽히지 않도록 분리
- **hanbit-design-system.md는 건들지 않는다** — Figma 원본과 대응하는 단일 소스. 편집은 토큰 값 업데이트 시에만
