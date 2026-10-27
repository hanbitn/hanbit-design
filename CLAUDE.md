# 한빛 Design System 리포

한빛 디자인 시스템을 스킬로 배포하는 리포다.

- **스킬 정의**: [SKILL.md](./SKILL.md) — 핵심 원칙, 자주 쓰는 토큰·타이포·브레이크포인트, 에셋 사용법
- **소스 오브 트루스**: [hanbit-design-system.md](./hanbit-design-system.md) — 전체 스펙 원본 (토큰 262개, 타이포, 컴포넌트)
- **Theme 에셋**: [theme/](./theme/) — Figma ① Theme 페이지에서 내보낸 아이콘·로고·일러스트 파일

## 이 리포에서 UI 작업할 때

SKILL.md의 규칙을 그대로 적용한다. 자주 쓰는 값은 SKILL.md에, 나머지는 hanbit-design-system.md에서 찾는다. 아이콘·로고·일러스트는 theme/의 파일을 쓴다.

## 유지보수 흐름

### 토큰 값 변경 (예: Primary 색상 조정)

1. `hanbit-design-system.md` 수정 (소스)
2. `SKILL.md`에 같은 값이 있으면 거기도 업데이트
3. `./install.sh` 실행 → 전역 `~/.claude/skills/hanbit-design/`에 배포

### Theme 에셋 추가·교체

1. Figma ① Theme 페이지에서 SVG로 내보내기 (파일명은 Figma 변형 이름 그대로: `Name=<이름>, <속성>=<값>.svg`)
2. `theme/Icon/<카테고리>/`, `theme/Illust/`, `theme/Logo/` 중 맞는 곳에 넣기
3. 새 카테고리 폴더를 만들었다면 SKILL.md "Theme 에셋" 트리에 추가
4. `./install.sh` 실행

### 다른 리포에서 설치

```bash
git clone https://github.com/hanbitn/hanbit-design.git
cd hanbit-design
./install.sh
```

## 설계 원칙

- **SKILL.md는 가볍게** — 스킬이 트리거될 때마다 로드되므로 자주 쓰는 값만 둔다. 상세는 hanbit-design-system.md를 가리킨다
- **값은 한 곳에서** — 카테고리별 사본을 만들지 않는다. SKILL.md의 값은 hanbit-design-system.md의 부분집합이어야 한다
- **hanbit-design-system.md는 Figma와 1:1** — 편집은 Figma 변경을 반영할 때만
- **theme/ 원본 파일은 수정하지 않는다** — 색 바꾸기(`currentColor` 치환 등)는 사용하는 쪽 코드에서 한다
