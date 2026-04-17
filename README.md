# 한빛 Design System Skill

Claude Code 스킬로 배포되는 한빛 디자인 시스템. 설치하면 UI 작업 시 자동으로 한빛 디자인 토큰·Semantic 가이드·브레이크포인트가 적용된다.

- **Figma**: https://www.figma.com/design/usRZn9VKhXQ9MedDWw1u57/
- **토큰 수**: 262개 (색상 199 · Semantic 44 · Component 6 · Modal 13)

---

## 설치

```bash
git clone https://github.com/hanbitn/hanbit-design.git
cd hanbit-design
./install.sh
```

설치 스크립트는 `~/.claude/skills/hanbit-design/`에 스킬을 배포한다. 기존 설치가 있으면 자동 백업(`hanbit-design.bak.<timestamp>`)한다.

### 설치 확인

Claude Code 세션에서 `/context` 또는 아무 UI 작업 요청 시 `hanbit-design` 스킬이 자동 트리거된다. 수동 확인:

```bash
ls ~/.claude/skills/hanbit-design/
# SKILL.md  references/
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
- 아이콘 선택

트리거 없이 작업하고 싶다면 `"한빛 디자인 시스템으로 버튼 만들어줘"` 처럼 명시해도 된다.

### 주요 규칙

1. **하드코딩 금지** — `#03aea0` 대신 `var(--color-primary-normal)`
2. **Semantic 우선** — `Emerald/50` 대신 `Primary/Normal`
3. **모바일 퍼스트** — xs(<768px) 기본, 미디어 쿼리로 확장

전체 규칙·CSS 변수·Semantic 가이드 → [SKILL.md](./SKILL.md)

---

## 유지보수

### 리포 구조

```
hanbit-design/
├── SKILL.md                  # 스킬 정의 (항상 로드됨, 슬림하게 유지)
├── CLAUDE.md                 # 이 리포 작업 시 자동 로드 (유지보수 가이드)
├── README.md                 # 이 파일
├── hanbit-design-system.md   # 소스 오브 트루스 (Figma 원본 대응)
├── install.sh                # 스킬 설치 스크립트
└── references/               # 카테고리별 상세 (필요 시에만 로드)
    ├── colors.md             # Atomic 팔레트 + Semantic 전체
    ├── components.md         # Modal / Component / 브레이크포인트
    ├── icons.md              # 아이콘·일러스트·로고
    └── full-reference.md     # → hanbit-design-system.md 심링크
```

### 토큰 값 변경 (예: Primary 색상 조정)

1. **소스 수정**: `hanbit-design-system.md`에서 해당 토큰 값 변경
2. **카테고리 문서 반영**: `references/colors.md` (또는 components/icons)의 값 업데이트
3. **핵심 토큰이면 SKILL.md도**: SKILL.md의 CSS 변수 블록에 포함된 값이면 거기도 반영
4. **배포**: `./install.sh` 실행 → 전역 스킬 갱신
5. **커밋**: `git commit` → `git push`

### 새 카테고리 추가 (예: Typography 토큰 신설)

1. `references/typography.md` 파일 생성
2. `SKILL.md` 하단에 포인터 추가 (예: `자세한 타이포 → references/typography.md`)
3. `install.sh`의 `cp -L` 라인에 새 파일 추가
4. `./install.sh` 실행

### 설계 원칙

- **SKILL.md는 가볍게** — 스킬 트리거마다 컨텍스트에 로드되므로 ~100줄 이하 유지. 자주 쓰는 토큰 20개 내외만
- **references/는 카테고리별** — 색상 작업 시 아이콘 목록까지 읽히지 않도록 분리
- **hanbit-design-system.md는 최소 편집** — Figma 원본과 1:1 대응. 편집은 토큰 값 업데이트 시에만
- **심링크는 리포 내부용** — `install.sh`가 `cp -L`로 실제 파일로 배포

### 문서 간 역할 분담

| 파일 | 역할 | 로드 시점 |
|------|------|-----------|
| `SKILL.md` | 스킬 정의, 핵심 토큰, 원칙 | 스킬 트리거 시 |
| `CLAUDE.md` | 이 리포 작업 시 지침 | 이 리포 세션 시작 시 |
| `hanbit-design-system.md` | 전체 토큰 원본 (소스) | 필요 시 수동 참조 |
| `references/*.md` | 카테고리별 상세 | 스킬이 필요 판단 시 |

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
