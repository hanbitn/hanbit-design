---
name: hanbit-design
description: >
  Apply the Hanbit Design System when doing any frontend design or UI implementation work for Hanbit projects.
  Use this skill whenever you are: building or modifying UI components, choosing colors, typography or font sizes,
  adding spacing or layout, implementing responsive behavior, writing CSS/Tailwind, creating modals or dialogs,
  picking or inserting icons, using the Hanbit logo, or making any visual design decision in the Hanbit codebase.
  Trigger even when the user says things like "make it look nice", "add a button", "style this component",
  "make it responsive", "add an icon", or "update the UI" — any frontend visual task should consult this skill.
---

# 한빛 Design System Skill

Figma: https://www.figma.com/design/usRZn9VKhXQ9MedDWw1u57/

이 스킬은 두 가지 소스로 구성된다. 아래 경로는 모두 이 SKILL.md가 있는 디렉토리 기준이다.

| 소스 | 내용 |
|------|------|
| `hanbit-design-system.md` | 전체 스펙 원본 — 토큰 262개, 타이포그래피, 브레이크포인트, 컴포넌트 목록 |
| `theme/` | Figma ① Theme 페이지의 실제 에셋 파일 — 아이콘·로고 SVG |

이 문서에는 자주 쓰는 값만 있다. 여기 없는 값은 추측하지 말고 `hanbit-design-system.md`에서 찾는다.

## 핵심 원칙

1. **하드코딩 금지**: 색상·간격·크기는 CSS 변수(`var(--color-primary-normal)`)로 표현
2. **Semantic 우선**: Atomic 팔레트(`Emerald/50`) 직접 사용 금지. Semantic 토큰(`Primary/Normal`) 사용
3. **모바일 퍼스트**: 기본 스타일은 xs(<768px), 미디어 쿼리로 확장
4. **에셋은 `theme/`에서**: 아이콘·로고를 새로 그리거나 외부 라이브러리(lucide, heroicons 등)로 대체하지 않는다

## 필수 CSS 변수

```css
:root {
  --color-primary-normal: #03aea0;   /* 기본 */
  --color-primary-strong: #009e91;   /* 호버 */
  --color-primary-heavy: #028b80;    /* 프레스 */

  --color-label-strong: #000000;
  --color-label-normal: #030712;                 /* 본문 */
  --color-label-neutral: rgba(30, 41, 57, 0.88); /* 보조 텍스트 */
  --color-label-alternative: rgba(62, 74, 92, 0.61); /* 캡션·설명 */
  --color-label-assistive: rgba(62, 74, 92, 0.28);   /* 플레이스홀더 */
  --color-label-disable: rgba(62, 74, 92, 0.16);

  --color-bg-normal: #ffffff;        /* 페이지 배경 */
  --color-bg-alternative: #f3f4f6;   /* 카드·섹션 배경 */

  --color-line-normal: rgba(92, 102, 118, 0.22);
  --color-line-neutral: rgba(92, 102, 118, 0.16);
  --color-line-alternative: rgba(92, 102, 118, 0.08);
  --color-fill-normal: rgba(92, 102, 118, 0.08);
  --color-fill-strong: rgba(92, 102, 118, 0.16);

  --color-status-positive: #00c950;
  --color-status-cautionary: #ff6900;
  --color-status-negative: #fb2c36;

  --color-dimmer: rgba(3, 7, 18, 0.52); /* 모달 딤 */
}
```

Accent, Inverse, Interaction, Static, Elevated 배경, Atomic 팔레트 전체 → `hanbit-design-system.md` § Semantic / § Atomic — 색상

## 타이포그래피

폰트는 **Pretendard** 하나. Figma의 "Bold"는 Heading 이하에서 **600**(SemiBold)이다 (Display·Title은 700).

| 스타일 | Size / Line Height | 용도 |
|--------|-------------------|------|
| Display 1 / 2 | 56px / 1.286 · 40px / 1.30 | 히어로, 랜딩 최상단 |
| Title 1 / 2 / 3 | 36 · 28 · 24px | 섹션 타이틀 |
| H1 / H2 | 22px / 1.364 · 20px / 1.40 | 섹션 주제 (H1 큰 화면, H2 작은 화면) |
| H3 / H4 | 18px / 1.445 · 17px / 1.412 | 본문 강조 (H3 큰 화면, H4 작은 화면) |
| Body 1 / 2 | 16px / 1.50 · 15px / 1.467 | 본문 (Reading 변형: 1.625 · 1.60) |
| Label 1 / 2 | 14px / 1.429 · 13px / 1.385 | 버튼, 태그, 폼 레이블 |
| Caption 1 / 2 | 12px / 1.334 · 11px / 1.273 | 메타 정보, 날짜, 카운트 |

- Normal은 UI용(좁은 행간), Reading은 장문용(넓은 행간)
- letter-spacing 값과 스타일별 CSS 클래스 → `hanbit-design-system.md` § 타이포그래피

## 브레이크포인트

| xs | sm | md | lg | xl |
|----|----|----|----|----|
| <768 | 768 | 992 | 1200 (주 데스크톱) | 1600 |

```js
// tailwind.config.js
screens: { sm: '768px', md: '992px', lg: '1200px', xl: '1600px' }
```

콘텐츠 최대 너비 1100px(lg) / 1440px(xl), 좌우 여백 20px. 간격(gap) 16px(Mobile) / 20px(Desktop).

## 모달

| 크기 | Width | Radius |
|------|-------|--------|
| Small | 360px | 12px |
| Medium | 400px | 12px |
| Large | 480px | 20px |
| XLarge | 560px | 20px |

공통: `max-height: 760px` / `min-width: 320px` / `max-width: 1060px`
Navigation·Action·Content 마진 → `hanbit-design-system.md` § Modal

## Theme 에셋 (`theme/`)

```
theme/
├── Icon/
│   ├── Normal/   # 일반 UI 아이콘 (24×24, 단색)
│   ├── Editor/   # 에디터 툴바 아이콘 (SVG + 일부 PNG)
│   ├── Color/    # 소셜·브랜드 컬러 로고 아이콘
│   ├── Stack/    # 기술 스택 (AWS, React, Java)
│   └── Lineup/   # 서비스 라인업 (Hanbit, Packt, Upstage)
└── Logo/Hanbit/  # 한빛 로고
```

### 파일 찾기

파일명은 Figma 변형 이름을 그대로 쓴다: `Name=<이름>[, <속성>=<값>...].svg`

- `Name=check, Thick=False.svg` / `Name=checkThick, Thick=True.svg`
- `Name=bell, Fill=False.svg` / `Name=bellFill, Fill=True.svg`
- `Name=chevronLeft, Tight=False, Thick=False, Small=False.svg`

이름은 camelCase가 섞여 있으므로 대소문자 무시로 검색한다:

```bash
find theme/Icon -iname '*chevronleft*'
```

기본은 `Fill=False`, `Thick=False`, `Small=False` 변형. 강조·선택 상태에만 Fill/Thick을 쓴다.
`Name=blank.svg`는 빈 자리용 플레이스홀더다.

### 아이콘 색상

Icon/Normal과 Editor SVG는 `fill="#030712"`(Label/Normal)가 박혀 있다. 인라인 SVG나 SVG 컴포넌트로 쓸 때는 `fill="#030712"`를 `fill="currentColor"`로 바꾸고, 색은 부모의 `color: var(--color-label-*)`로 지정한다. 원본 파일은 수정하지 않는다.

Color / Stack / Lineup 아이콘은 브랜드 고유색이므로 색을 바꾸지 않는다.

### 로고 (`theme/Logo/Hanbit/`)

| 파일 | 형태 | 크기 |
|------|------|------|
| `-=-.svg` | Logo Circle (심볼) | 40×40 |
| `Color=<C>, Bold=Default.svg` | Logo Horizontal (가로형) | 74×32 |
| `Color=<C>.svg` | Logo Vertical (세로형) | 53×77 |

`<C>`: `Normal`(브랜드 컬러, 밝은 배경) · `Black`(흑백 인쇄·단색) · `White`(어두운 배경, Inverse 영역).
로고는 비율을 유지하고, 색 변경·재채색하지 않는다.

### 에셋이 없을 때

`hanbit-design-system.md` § Icon에는 있는데 `theme/`에 파일이 없거나, Illustration(Illust/Blank·Labs·Search·Avatar)이 필요하면 임의로 만들지 말고 사용자에게 Figma에서 내보내 달라고 요청한다.

## 체크리스트

- [ ] 하드코딩된 색상값 없음 (CSS 변수 사용)
- [ ] Semantic 토큰 사용 (Atomic 직접 참조 금지)
- [ ] Pretendard + 정의된 타이포 스타일만 사용
- [ ] 모바일 퍼스트 반응형 적용
- [ ] 모달이면 Small/Medium/Large/XLarge 중 선택
- [ ] 아이콘·로고는 `theme/` 파일 사용, 단색 아이콘은 `currentColor`
