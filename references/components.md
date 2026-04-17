# 한빛 Design System — 컴포넌트 토큰 레퍼런스

모달, 카드 등 컴포넌트 단위 토큰의 세부 값.

## Component (Mobile / Desktop 플랫폼)

| 토큰 | Mobile | Desktop |
|------|--------|---------|
| Value/Padding/Card/Tiny | 4px | 6px |
| Value/Space/Gap/Normal | 16px | 20px |
| Value/Margin/Platform | 20px | 20px |
| Value/Width/Viewport/lg | 1100px | 1100px |
| Value/Width/Viewport/xl | 1440px | 1440px |

## Modal (Small / Medium / Large / XLarge)

| 토큰 | Small | Medium | Large | XLarge |
|------|-------|--------|-------|--------|
| Width/Normal | 360px | 400px | 480px | 560px |
| Width/Min | 320px | 320px | 320px | 320px |
| Width/Max | 1060px | 1060px | 1060px | 1060px |
| Height/Popup/Max | 760px | 760px | 760px | 760px |
| Radius | 12px | 12px | 20px | 20px |
| Margin/Navigation/Normal | 16px | 20px | 20px | 24px |
| Margin/Navigation/Horizontal | 16px | 16px | 20px | 28px |
| Margin/Navigation/Text | 4px | 4px | 4px | 4px |
| Margin/Navigation/Tool/Tab | 12px | 12px | 12px | 20px |
| Margin/Action/Normal Horizontal | 16px | 20px | 24px | 32px |
| Margin/Action/Normal Vertical | 16px | 20px | 24px | 24px |
| Margin/Action/Contents Bottom | 4px | 4px | 0px | 0px |
| Margin/Content/Content | 20px | 20px | 24px | 32px |

## 브레이크포인트

| 분류 | 사이즈 | 대응 기기 |
|------|--------|----------|
| `xs` | 768px 미만 | 모바일 |
| `sm` | 768px 이상 | 태블릿 세로 |
| `md` | 992px 이상 | 태블릿 가로 |
| `lg` | 1200px 이상 | 데스크톱 |
| `xl` | 1600px 이상 | 데스크톱 와이드 |

```css
@media (min-width: 768px)  { /* sm */ }
@media (min-width: 992px)  { /* md */ }
@media (min-width: 1200px) { /* lg */ }
@media (min-width: 1600px) { /* xl */ }
```

## Opacity

원시 Opacity 값 (필요시 참조):

`0, 5, 8, 12, 16, 22, 28, 35, 43, 52, 61, 74, 88, 97, 100`

## Element (Gradient / Interaction / Safe Area / Ratio)

Figma 컴포넌트로만 존재하며 CSS 토큰은 별도 정의되지 않음. Figma 파일에서 Element 페이지 참조:
https://www.figma.com/design/usRZn9VKhXQ9MedDWw1u57/
