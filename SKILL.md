---
name: hanbit-design
description: >
  Apply the Hanbit Design System when doing any frontend design or UI implementation work for Hanbit projects.
  Use this skill whenever you are: building or modifying UI components, choosing colors, adding spacing or layout,
  implementing responsive behavior, writing CSS/Tailwind, creating modals or dialogs, picking icons, or making
  any visual design decision in the Hanbit codebase. Trigger even when the user says things like "make it look nice",
  "add a button", "style this component", "make it responsive", or "update the UI" — any frontend visual task
  should consult this skill.
---

# 한빛 Design System Skill

Figma: https://www.figma.com/design/usRZn9VKhXQ9MedDWw1u57/

## 핵심 원칙

1. **하드코딩 금지**: 색상·간격·크기는 반드시 CSS 변수(`var(--color-primary-normal)`)로 표현
2. **Semantic 우선**: Atomic 팔레트(`Emerald/50`) 직접 사용 금지. 의미 담긴 Semantic 토큰(`Primary/Normal`) 사용
3. **모바일 퍼스트**: 기본 스타일은 xs(<768px), 미디어 쿼리로 확장

## 필수 CSS 변수

```css
:root {
  /* Primary (브랜드) */
  --color-primary-normal: #03aea0;
  --color-primary-strong: #009e91;
  --color-primary-heavy: #028b80;

  /* Label (텍스트) */
  --color-label-strong: #000000;
  --color-label-normal: #030712;
  --color-label-neutral: rgba(30, 41, 57, 0.88);
  --color-label-alternative: rgba(62, 74, 92, 0.61);
  --color-label-assistive: rgba(62, 74, 92, 0.28);
  --color-label-disable: rgba(62, 74, 92, 0.16);

  /* Background */
  --color-bg-normal: #ffffff;
  --color-bg-alternative: #f3f4f6;

  /* Line / Fill */
  --color-line-normal: rgba(92, 102, 118, 0.22);
  --color-line-alternative: rgba(92, 102, 118, 0.08);
  --color-fill-normal: rgba(92, 102, 118, 0.08);
  --color-fill-strong: rgba(92, 102, 118, 0.16);

  /* Status */
  --color-status-positive: #00c950;
  --color-status-cautionary: #ff6900;
  --color-status-negative: #fb2c36;

  /* Material */
  --color-dimmer: rgba(3, 7, 18, 0.52);
}
```

Accent, Inverse, Interaction, 전체 Atomic 팔레트가 필요하면 → `references/colors.md`

## Semantic 선택 가이드

| 상황 | 토큰 |
|------|------|
| 본문 텍스트 | `--color-label-normal` |
| 보조 텍스트 | `--color-label-neutral` |
| 캡션·설명 | `--color-label-alternative` |
| 플레이스홀더 | `--color-label-assistive` |
| 페이지 배경 | `--color-bg-normal` |
| 카드·섹션 배경 | `--color-bg-alternative` |
| Primary 버튼 기본 | `--color-primary-normal` |
| Primary 호버 | `--color-primary-strong` |
| Primary 프레스 | `--color-primary-heavy` |
| 성공·경고·오류 | `--color-status-{positive,cautionary,negative}` |
| 모달 딤 | `--color-dimmer` |

## 브레이크포인트 (Tailwind)

```js
// tailwind.config.js
screens: { sm: '768px', md: '992px', lg: '1200px', xl: '1600px' }
```

```css
/* xs 기본 → 확장 */
@media (min-width: 768px)  { /* sm */ }
@media (min-width: 1200px) { /* lg (주 데스크톱) */ }
```

## 모달 크기

| 크기 | Width | Radius |
|------|-------|--------|
| Small | 360px | 12px |
| Medium | 400px | 12px |
| Large | 480px | 20px |
| XLarge | 560px | 20px |

공통: `max-height: 760px` / `min-width: 320px`  
상세 마진·패딩 값 → `references/components.md`

## 아이콘

Icon/Normal 라이브러리 사용. 자주 쓰는 것:  
`Check` `Close` `Plus` `Search` `Menu` `Chevron Left/Right/Up/Down` `Circle Check` `Circle Exclamation` `Triangle Exclamation`

전체 아이콘 목록 → `references/icons.md`

## 전체 원본 레퍼런스

Atomic 팔레트 전체 HEX, Opacity 값, Illustration/Logo 등 완전한 스펙 → `references/full-reference.md`

## 체크리스트

- [ ] 하드코딩된 색상값 없음 (CSS 변수 사용)
- [ ] Semantic 토큰 사용 (Atomic 직접 참조 금지)
- [ ] 모바일 퍼스트 반응형 적용
- [ ] 모달이면 Small/Medium/Large/XLarge 중 선택
