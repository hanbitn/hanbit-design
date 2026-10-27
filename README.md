# 한빛 Design System Skill

Claude Code 스킬로 배포되는 한빛 디자인 시스템. 설치하면 UI 작업 시 자동으로 한빛 디자인 토큰·타이포그래피·브레이크포인트와 아이콘·로고·일러스트 에셋이 적용된다.

- **Figma**: https://www.figma.com/design/usRZn9VKhXQ9MedDWw1u57/
- **토큰 수**: 262개 (색상 199 · Semantic 44 · Component 6 · Modal 13)
- **에셋**: 아이콘 458개 · 일러스트 8개 · 로고 7개 (Figma ① Theme)

---

## 설치

```bash
git clone https://github.com/hanbitn/hanbit-design.git
cd hanbit-design
./install.sh
```

설치 스크립트는 `~/.claude/skills/hanbit-design/`에 스킬을 배포한다. 기존 설치가 있으면 `~/.claude/skill-backups/hanbit-design.<timestamp>`로 자동 백업한다.

### 설치 확인

Claude Code 세션에서 `/context` 또는 아무 UI 작업 요청 시 `hanbit-design` 스킬이 자동 트리거된다. 수동 확인:

```bash
ls ~/.claude/skills/hanbit-design/
# SKILL.md  hanbit-design-system.md  theme/
```

### 업데이트

리포에 변경사항이 있을 때:

```bash
cd hanbit-design
git pull
./install.sh
```

---

## 사용

스킬은 트리거만 해두면 다음 상황에 자동 적용된다:

- UI 컴포넌트 작성·수정
- CSS / Tailwind 스타일링
- 색상·간격·크기 결정
- 모달·다이얼로그 구현
- 반응형 레이아웃
- 아이콘·로고·일러스트 사용

트리거 없이 작업하고 싶다면 `"한빛 디자인 시스템으로 버튼 만들어줘"` 처럼 명시해도 된다.

### 주요 규칙

1. **하드코딩 금지** — `#03aea0` 대신 `var(--color-primary-normal)`
2. **Semantic 우선** — `Emerald/50` 대신 `Primary/Normal`
3. **모바일 퍼스트** — xs(<768px) 기본, 미디어 쿼리로 확장
4. **에셋은 theme/에서** — 아이콘·로고·일러스트를 새로 그리거나 외부 아이콘 라이브러리로 대체하지 않음

전체 규칙·CSS 변수·Semantic 가이드 → [SKILL.md](./SKILL.md)

---

## 유지보수

### 리포 구조

```
hanbit-design/
├── SKILL.md                  # 스킬 정의 (트리거 시 로드, 자주 쓰는 값만)
├── hanbit-design-system.md   # 소스 오브 트루스 (Figma 원본 대응, 전체 스펙)
├── theme/                    # Figma ① Theme 에셋
│   ├── Icon/                 #   Normal · Editor · Color · Stack · Lineup
│   ├── Illust/               #   Blank · Search · Labs · Avatar
│   └── Logo/Hanbit/          #   Circle · Horizontal · Vertical
├── CLAUDE.md                 # 이 리포 작업 시 자동 로드 (유지보수 가이드)
├── README.md                 # 이 파일
└── install.sh                # 스킬 설치 스크립트
```

### 토큰 값 변경 (예: Primary 색상 조정)

1. **소스 수정**: `hanbit-design-system.md`에서 해당 토큰 값 변경
2. **SKILL.md 반영**: SKILL.md에 같은 값이 있으면 거기도 반영
3. **배포**: `./install.sh` 실행 → 전역 스킬 갱신
4. **커밋**: `git commit` → `git push`

### Theme 에셋 추가·교체

1. Figma ① Theme 페이지에서 SVG로 내보내기 (파일명은 Figma 변형 이름 그대로: `Name=<이름>, <속성>=<값>.svg`)
2. `theme/Icon/<카테고리>/`, `theme/Illust/`, `theme/Logo/` 중 맞는 곳에 넣기
3. 새 카테고리 폴더를 만들었다면 SKILL.md의 "Theme 에셋" 트리에 추가
4. `./install.sh` 실행

### 설계 원칙

- **SKILL.md는 가볍게** — 스킬 트리거마다 컨텍스트에 로드되므로 자주 쓰는 값만 둔다. 상세는 hanbit-design-system.md를 가리킨다
- **값은 한 곳에서** — 카테고리별 사본을 만들지 않는다. SKILL.md의 값은 hanbit-design-system.md의 부분집합
- **hanbit-design-system.md는 최소 편집** — Figma 원본과 1:1 대응. 편집은 토큰 값 업데이트 시에만
- **theme/ 원본은 수정하지 않음** — 아이콘 재색상(`currentColor` 치환)은 사용하는 코드에서 처리

### 문서 간 역할 분담

| 파일 | 역할 | 로드 시점 |
|------|------|-----------|
| `SKILL.md` | 스킬 정의, 핵심 토큰, 원칙, 에셋 사용법 | 스킬 트리거 시 |
| `hanbit-design-system.md` | 전체 스펙 원본 (소스) | SKILL.md에 없는 값이 필요할 때 |
| `theme/` | 아이콘·로고·일러스트 파일 | 에셋이 필요할 때 |
| `CLAUDE.md` | 이 리포 작업 시 지침 | 이 리포 세션 시작 시 |

---

## 기여

디자인 시스템 토큰 변경은 Figma 원본 기준으로 동기화한다:

1. Figma에서 토큰 변경 확정
2. 이 리포에서 `hanbit-design-system.md` 업데이트
3. 위 "토큰 값 변경" 흐름 따라 PR 생성
4. 리뷰 후 머지 → 팀 전체가 `git pull && ./install.sh`

---

## 라이선스

Copyright (c) 2025 HanbitN, Inc. All Rights Reserved.

이 저장소의 모든 콘텐츠는 한빛앤 주식회사의 자산입니다.  
사전 서면 허가 없이 복제·수정·배포·재사용을 금합니다.  
자세한 내용은 [LICENSE](./LICENSE) 파일을 참고하세요.
