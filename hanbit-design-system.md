# 한빛 Design System

> Figma 파일: [한빛 Design System](https://www.figma.com/design/usRZn9VKhXQ9MedDWw1u57/)  
> 총 Variables: 262개 | Collections: 4개

---

## 목차

1. [파일 구조](#파일-구조)
2. [Design Tokens](#design-tokens)
   - [Atomic — 색상](#atomic--색상)
   - [Atomic — Opacity](#atomic--opacity)
   - [Semantic](#semantic)
   - [Component](#component)
   - [Modal](#modal)
3. [브레이크포인트](#브레이크포인트-breakpoints)
4. [컴포넌트](#컴포넌트)
   - [Icon](#icon)
   - [Illustration & Logo](#illustration--logo)
   - [Element](#element)

---

## 파일 구조

| 페이지 | 설명 |
|--------|------|
| Overview | 디자인 시스템 소개 |
| Updates | 업데이트 내역 |
| ⓪ Foundation | 색상·타이포·그리드 기초 가이드 |
| ┗ Color - Atomic | Atomic 색상 팔레트 |
| ┗ Color - Semantic | Semantic 색상 가이드 |
| ┗ Typography | 타이포그래피 가이드 |
| ┗ Grid | 그리드 시스템 |
| ① Theme | 아이콘·일러스트·로고 |
| ② Element | 그라디언트·인터랙션·비율 요소 |
| ③ Component | UI 컴포넌트 |
| Ⓜ Makers' Principle | 제작 원칙 |

---

## Design Tokens

### Variable Collections 개요

| Collection | 모드 | 토큰 수 |
|------------|------|---------|
| Atomic | Mode 1 | 199개 |
| Sementic | Light | 44개 |
| Component | Mobile / Desktop | 6개 |
| Modal | Small / Medium / Large / XLarge | 13개 |

---

### Atomic — 색상

Atomic은 원시 색상 팔레트다. 모든 Semantic 토큰의 소스가 된다.

#### Common

| 토큰 | HEX |
|------|-----|
| Common/100 | `#000000` |
| Common/0 | `#ffffff` |

#### Neutral (무채색)

| 토큰 | HEX |
|------|-----|
| Neutral/5 | `#fafafa` |
| Neutral/10 | `#f5f5f5` |
| Neutral/15 | `#ededed` |
| Neutral/20 | `#e5e5e5` |
| Neutral/25 | `#dcdcdc` |
| Neutral/30 | `#d4d4d4` |
| Neutral/35 | `#c5c5c5` |
| Neutral/40 | `#b0afaf` |
| Neutral/45 | `#929292` |
| Neutral/50 | `#737373` |
| Neutral/55 | `#666666` |
| Neutral/60 | `#525252` |
| Neutral/65 | `#494949` |
| Neutral/70 | `#404040` |
| Neutral/75 | `#383737` |
| Neutral/80 | `#262626` |
| Neutral/90 | `#171717` |
| Neutral/95 | `#0a0a0a` |

#### Cool Neutral (차가운 무채색 — 두 가지 세트 존재)

**세트 A (따뜻한 쿨 뉴트럴)**

| 토큰 | HEX |
|------|-----|
| Cool Neutral/5 | `#fafafa` |
| Cool Neutral/10 | `#f5f5f5` |
| Cool Neutral/15 | `#ededed` |
| Cool Neutral/20 | `#e5e5e5` |
| Cool Neutral/25 | `#dcdcdc` |
| Cool Neutral/30 | `#d4d4d4` |
| Cool Neutral/35 | `#c5c5c5` |
| Cool Neutral/40 | `#b0afaf` |
| Cool Neutral/45 | `#929292` |
| Cool Neutral/50 2 | `#737373` |
| Cool Neutral/55 | `#666666` |
| Cool Neutral/60 2 | `#525252` |
| Cool Neutral/65 | `#494949` |
| Cool Neutral/70 2 | `#404040` |
| Cool Neutral/75 | `#383737` |
| Cool Neutral/80 2 | `#262626` |
| Cool Neutral/90 2 | `#171717` |
| Cool Neutral/95 2 | `#0a0a0a` |

**세트 B (블루 쿨 뉴트럴)**

| 토큰 | HEX |
|------|-----|
| Cool Neutral/5 | `#f9fafb` |
| Cool Neutral/10 | `#f3f4f6` |
| Cool Neutral/15 | `#ebedf0` |
| Cool Neutral/20 | `#e5e7eb` |
| Cool Neutral/25 | `#dcdfe4` |
| Cool Neutral/30 | `#d1d5dc` |
| Cool Neutral/35 | `#b7beca` |
| Cool Neutral/40 | `#99a1af` |
| Cool Neutral/45 | `#7a8393` |
| Cool Neutral/50 | `#6a7282` |
| Cool Neutral/55 | `#5c6676` |
| Cool Neutral/60 | `#4a5565` |
| Cool Neutral/65 | `#3e4a5c` |
| Cool Neutral/70 | `#364153` |
| Cool Neutral/75 | `#2f3849` |
| Cool Neutral/80 | `#1e2939` |
| Cool Neutral/90 | `#101828` |
| Cool Neutral/95 | `#030712` |

#### Emerald (브랜드 Primary 색상)

| 토큰 | HEX |
|------|-----|
| Emerald/5 | `#ecfdf5` |
| Emerald/10 | `#cdefec` |
| Emerald/15 | `#b8e4e1` |
| Emerald/20 | `#9adfd9` |
| Emerald/25 | `#89dad3` |
| Emerald/30 | `#68cec6` |
| Emerald/35 | `#4fc9bf` |
| Emerald/40 | `#35beb3` |
| Emerald/45 | `#20b3a7` |
| Emerald/50 | `#03aea0` |
| Emerald/55 | `#009e91` |
| Emerald/60 | `#028b80` |
| Emerald/65 | `#007c72` |
| Emerald/70 | `#026860` |
| Emerald/75 | `#006159` |
| Emerald/80 | `#005a53` |
| Emerald/90 | `#004640` |
| Emerald/95 | `#012320` |

#### Red

| 토큰 | HEX |
|------|-----|
| Red/5 | `#fef2f2` |
| Red/10 | `#ffe2e2` |
| Red/20 | `#ffc9c9` |
| Red/30 | `#ffa2a2` |
| Red/40 | `#ff6467` |
| Red/50 | `#fb2c36` |
| Red/60 | `#e7000b` |
| Red/70 | `#c10007` |
| Red/80 | `#9f0712` |
| Red/90 | `#82181a` |
| Red/95 | `#460809` |

#### Orange

| 토큰 | HEX |
|------|-----|
| Orange/5 | `#fff7ed` |
| Orange/10 | `#ffedd4` |
| Orange/20 | `#ffd6a8` |
| Orange/30 | `#ffb86a` |
| Orange/40 | `#ff8904` |
| Orange/50 | `#ff6900` |
| Orange/60 | `#f54900` |
| Orange/70 | `#ca3500` |
| Orange/80 | `#9f2d00` |
| Orange/90 | `#7e2a0c` |
| Orange/95 | `#441306` |

#### Yellow

| 토큰 | HEX |
|------|-----|
| Yellow/5 | `#fefce8` |
| Yellow/10 | `#fef9c2` |
| Yellow/20 | `#fff085` |
| Yellow/30 | `#ffdf20` |
| Yellow/40 | `#fdc700` |
| Yellow/50 | `#f0b100` |
| Yellow/60 | `#d08700` |
| Yellow/70 | `#a65f00` |
| Yellow/80 | `#894b00` |
| Yellow/90 | `#733e0a` |
| Yellow/95 | `#432004` |

#### Lime

| 토큰 | HEX |
|------|-----|
| Lime/5 | `#f7fee7` |
| Lime/10 | `#ecfcca` |
| Lime/20 | `#d8f999` |
| Lime/30 | `#bbf451` |
| Lime/40 | `#9ae600` |
| Lime/50 | `#7ccf00` |
| Lime/60 | `#5ea500` |
| Lime/70 | `#497d00` |
| Lime/80 | `#3c6300` |
| Lime/90 | `#35530e` |
| Lime/95 | `#192e03` |

#### Green

| 토큰 | HEX |
|------|-----|
| Green/5 | `#f0fdf4` |
| Green/10 | `#dcfce7` |
| Green/20 | `#b9f8cf` |
| Green/30 | `#7bf1a8` |
| Green/40 | `#05df72` |
| Green/50 | `#00c950` |
| Green/60 | `#00a63e` |
| Green/70 | `#008236` |
| Green/80 | `#016630` |
| Green/90 | `#0d542b` |
| Green/95 | `#032e15` |

#### Cyan

| 토큰 | HEX |
|------|-----|
| Cyan/5 | `#ecfeff` |
| Cyan/10 | `#cefafe` |
| Cyan/20 | `#a2f4fd` |
| Cyan/30 | `#53eafd` |
| Cyan/40 | `#00d3f3` |
| Cyan/50 | `#00b8db` |
| Cyan/60 | `#0092b8` |
| Cyan/70 | `#007595` |
| Cyan/80 | `#005f78` |
| Cyan/90 | `#104e64` |
| Cyan/95 | `#053345` |

#### Sky

| 토큰 | HEX |
|------|-----|
| Sky/5 | `#f0f9ff` |
| Sky/10 | `#dff2fe` |
| Sky/20 | `#b8e6fe` |
| Sky/30 | `#74d4ff` |
| Sky/40 | `#00bcff` |
| Sky/50 | `#00a6f4` |
| Sky/60 | `#0084d1` |
| Sky/70 | `#0069a8` |
| Sky/80 | `#00598a` |
| Sky/90 | `#024a70` |
| Sky/95 | `#052f4a` |

#### Blue

| 토큰 | HEX |
|------|-----|
| Blue/5 | `#eff6ff` |
| Blue/10 | `#dbeafe` |
| Blue/20 | `#bedbff` |
| Blue/30 | `#8ec5ff` |
| Blue/40 | `#51a2ff` |
| Blue/50 | `#2b7fff` |
| Blue/60 | `#155dfc` |
| Blue/70 | `#1447e6` |
| Blue/80 | `#193cb8` |
| Blue/90 | `#1c398e` |
| Blue/95 | `#162456` |

#### Purple

| 토큰 | HEX |
|------|-----|
| Purple/5 | `#faf5ff` |
| Purple/10 | `#f3e8ff` |
| Purple/20 | `#e9d4ff` |
| Purple/30 | `#dab2ff` |
| Purple/40 | `#c27aff` |
| Purple/50 | `#ad46ff` |
| Purple/60 | `#9810fa` |
| Purple/70 | `#8200db` |
| Purple/80 | `#6e11b0` |
| Purple/90 | `#59168b` |
| Purple/95 | `#3c0366` |

#### Pink

| 토큰 | HEX |
|------|-----|
| Pink/5 | `#fdf2f8` |
| Pink/10 | `#fce7f3` |
| Pink/20 | `#fccee8` |
| Pink/30 | `#fda5d5` |
| Pink/40 | `#fb64b6` |
| Pink/50 | `#f6339a` |
| Pink/60 | `#e60076` |
| Pink/70 | `#c6005c` |
| Pink/80 | `#a3004c` |
| Pink/90 | `#861043` |
| Pink/95 | `#510424` |

---

### Atomic — Opacity

| 토큰 | 값 |
|------|-----|
| Opacity/0 | 0 |
| Opacity/5 | 5 |
| Opacity/8 | 8 |
| Opacity/12 | 12 |
| Opacity/16 | 16 |
| Opacity/22 | 22 |
| Opacity/28 | 28 |
| Opacity/35 | 35 |
| Opacity/43 | 43 |
| Opacity/52 | 52 |
| Opacity/61 | 61 |
| Opacity/74 | 74 |
| Opacity/88 | 88 |
| Opacity/97 | 97 |
| Opacity/100 | 100 |

---

### Semantic

Semantic 토큰은 Atomic 토큰을 참조하며, Light 모드 기준으로 정의되어 있다.

#### Primary (브랜드 컬러 — Emerald 기반)

| 토큰 | 참조 | HEX |
|------|------|-----|
| Primary/Normal | {Emerald/50} | `#03aea0` |
| Primary/Strong | {Emerald/55} | `#009e91` |
| Primary/Heavy | {Emerald/60} | `#028b80` |

#### Label (텍스트 색상)

| 토큰 | 값 | 설명 |
|------|-----|------|
| Label/Strong | {Common/100} | `#000000` — 가장 강한 강조 |
| Label/Normal | {Cool Neutral/95} | `#030712` — 기본 텍스트 |
| Label/Neutral | `rgba(30, 41, 57, 0.88)` | 일반 보조 텍스트 |
| Label/Alternative | `rgba(62, 74, 92, 0.61)` | 대체 텍스트 |
| Label/Assistive | `rgba(62, 74, 92, 0.28)` | 보조 힌트 텍스트 |
| Label/Disable | `rgba(62, 74, 92, 0.16)` | 비활성 텍스트 |

#### Background

| 토큰 | 참조 | 설명 |
|------|------|------|
| Background/Normal/Normal | {Common/0} | 기본 배경 |
| Background/Normal/Alternative | {Cool Neutral/10} | 보조 배경 |
| Background/Elevated/Normal | {Common/0} | 플로팅 요소 기본 배경 |
| Background/Elevated/Alternative | {Cool Neutral/30} | 플로팅 요소 보조 배경 |

#### Interaction

| 토큰 | 참조 | 설명 |
|------|------|------|
| Interaction/Inactive | {Cool Neutral/35} | 비활성 상태 |
| Interaction/Disable | {Cool Neutral/5} | 비활성화 상태 |

#### Line (구분선)

| 토큰 | 값 |
|------|-----|
| LIne/Normal | `rgba(92, 102, 118, 0.22)` |
| LIne/Neutral | `rgba(92, 102, 118, 0.16)` |
| LIne/Alternative | `rgba(92, 102, 118, 0.08)` |

#### Fill (채우기)

| 토큰 | 값 |
|------|-----|
| Fill/Normal | `rgba(92, 102, 118, 0.08)` |
| Fill/Strong | `rgba(92, 102, 118, 0.16)` |
| Fill/Alternative | `rgba(92, 102, 118, 0.05)` |

#### Status (상태 표시)

| 토큰 | 참조 | HEX | 용도 |
|------|------|-----|------|
| Status/Positive | {Green/50} | `#00c950` | 성공/긍정 |
| Status/Cautionary | {Orange/50} | `#ff6900` | 경고 |
| Status/Negative | {Red/50} | `#fb2c36` | 오류/부정 |

#### Static (고정 색상)

| 토큰 | 참조 |
|------|------|
| Static/White | {Common/0} |
| Static/Black | {Common/100} |

#### Accent/Background

| 토큰 | 참조 |
|------|------|
| Accent/Background/Orange | {Orange/40} |
| Accent/Background/Lime | {Lime/40} |
| Accent/Background/Cyan | {Cyan/40} |
| Accent/Background/Sky | {Sky/40} |
| Accent/Background/Blue | {Blue/40} |
| Accent/Background/Purple | {Purple/40} |
| Accent/Background/Pink | {Pink/40} |

#### Accent/Foreground

| 토큰 | 참조 |
|------|------|
| Accent/Foreground/Orange | {Orange/60} |
| Accent/Foreground/Lime | {Lime/60} |
| Accent/Foreground/Cyan | {Cyan/60} |
| Accent/Foreground/Sky | {Sky/60} |
| Accent/Foreground/Blue | {Blue/60} |
| Accent/Foreground/Purple | {Purple/60} |
| Accent/Foreground/Pink | {Pink/60} |

#### Material & Inverse

| 토큰 | 값 | 설명 |
|------|-----|------|
| Material/Dimmer | `rgba(3, 7, 18, 0.52)` | 딤 오버레이 |
| Inverse/Background | {Cool Neutral/95} | 다크 인버스 배경 |
| Inverse/Label | {Cool Neutral/10} | 다크 인버스 텍스트 |
| Inverse/Primary | {Emerald/50} | 인버스 Primary |

---

### Component

플랫폼(Mobile/Desktop)에 따라 값이 달라지는 컴포넌트 토큰.

| 토큰 | Mobile | Desktop |
|------|--------|---------|
| Value/Padding/Card/Tiny | 4px | 6px |
| Value/Space/Gap/Normal | 16px | 20px |
| Value/Margin/Platform | 20px | 20px |
| Value/Width/Viewport/lg | 1100px | 1100px |
| Value/Width/Viewport/xl | 1440px | 1440px |
| Variant/Platform | "Mobile" | "Desktop" |

---

### Modal

모달 크기(Small / Medium / Large / XLarge)에 따라 달라지는 레이아웃 토큰.

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

---

## 컴포넌트

### Icon

아이콘은 세 가지 카테고리로 구성된다.

#### Icon/Normal (일반 아이콘)

Fill 또는 Thick/Tight/Small 프로퍼티로 Outline/Filled 등 변형을 지원한다.

**방향/탐색**
- Chevron: Left, Right, Up, Down, Double Left, Double Right
- Arrow: Left, Right, Up, Down, Right Down, Left Down, Turn Down Left, Turn Down Right
- Caret: Left, Right, Up, Down

**액션**
- Check, Close, Close2, Plus, Minus, Search, Filter, Refresh, Reset, Share, Share iOS, Send, Download, Upload, Download2, Copy, External Link, Attachment, Flip Backward, Flip Forward, Change, Change2, Login, Logout

**콘텐츠/미디어**
- Book, Document, Document None, Document Person, Document Star, Document Text, Folder, Folder Mark, Folder Job, Folder Star, Image, Video, Play, Play2, Pause, Camera, Microphone, Microphone Slash

**커뮤니케이션**
- Bubble, Bubble Plus, Message, QnA, Mail, Mail Open, Bell, Bell Plus, Megaphone, Chat

**사람/사용자**
- Person, Person Plus, Persons, Business Bag, Company, Company Check, Company Plus

**UI/레이아웃**
- Menu, More Horizontal, More Vertical, Handle, Handle Horizon, Handle Vertical, Apps, Column, List, List Category, List Ordered, Inbox, Template, Thumbnail, Layout Left, Layout Right, Layout Top, Layout Bottom, Layout Alt, Dashboard, Presentation

**상태/피드백**
- Circle Check, Circle Close, Circle Exclamation, Circle Info, Circle Plus, Circle Question, Circle Block, Circle Dot, Circle Point, Triangle Exclamation, Exclamation, Question, Square Check, Square More, Square Caret

**날짜/시간**
- Calendar, AddCalendar, Clock, Time, History, Hourglass, Moon, Sun

**커머스/비즈니스**
- Cart, Cart2, Coins, Tag, Ticket, Trophy, Medal, Diamond, Crown, Certificate, Verified Check, Verified Sale, Verified Star, Fire, Thunder, Sparkle, Star, Heart, Heart in Heart, Like, Dislike, Pin, Location, Compass, Globe, Graduation, Umbrella

**기술/개발**
- Code, Desktop, Mobile, Keyboard, Setting, Tune, Magic Wand, AI, Dev, Deta, Shield, Rocket, Cloud, CloudRefresh, CloudTrue, CloudFalse, CloudPause, CloudDownload, CloudUpload

**텍스트 편집**
- Pencil, Pen, Write, Highlight, Design, Eraser, Bold, Italic, Underline, Strikethrough, Align Left, Align Right, Align Center, Align Justify, Text Format, Text Variable, Type, Quote, Link, Bulb, Flag

**뷰/탐색**
- Eye, Eye Slash, Maximize, Minimize, Maximize2, Minimize2, Onepage, Twopage, Thumbnail, Face Smile, Face Sad, Coffee

**소셜 로고 (Normal)**
- Logo Apple, Logo Facebook, Logo Google Play, Logo Instagram, Logo Kakao, Logo LinkedIn, Logo Naver Blog, Logo YouTube, Android

**숫자**
- Number1, Number2, Number3, Number4, Number5

**도형**
- Circle, Square, Square Plus, Square Han, Square Hangul, Square Kana, Square Latin, Triangle, Line Horizontal, Dot

#### Icon/Color (컬러 아이콘)

브랜드 로고 컬러 아이콘.

- Logo Twitter, Logo Google, Logo Apple, Logo Facebook, Logo Google Play, Logo Instagram, Logo Kakao, Logo LinkedIn, Logo Naver Blog, Logo YouTube

#### Icon/Stack (기술 스택 아이콘)

- Aws, React, Java

#### Icon/Lineup (서비스 라인업 아이콘)

- Hanbit, Packt, Upstage

---

### Illustration & Logo

#### Illustration

| 컴포넌트 | 변형 수 | 설명 |
|----------|---------|------|
| Illust/Blank | 1 | 빈 상태 |
| Illust/Labs | 1 | 랩스 |
| Illust/Search | 1 | 검색 결과 없음 |
| Illust/Avatar | 5 | 아바타 (5가지 스타일) |

#### Logo

| 컴포넌트 | 프로퍼티 | 변형 수 |
|----------|---------|---------|
| Logo/Hanbit/Logo Circle | - | 1 |
| Logo/Hanbit/Logo Horizontal | Color, Bold | 3 |
| Logo/Hanbit/Logo Vertical | Color | 3 |

---

### Element

UI를 구성하는 기초 요소들.

#### Gradient

| 컴포넌트 | 프로퍼티 |
|----------|---------|
| Gradient/Solid | Direction |
| Gradient/Multiple | Direction |
| Gradient/Mask | - |
| Gradient/Resource/Mask/Size | Size |

#### Interaction

인터랙션 오버레이 레이어 (호버, 프레스 등 상태 표현).

| 컴포넌트 | 프로퍼티 |
|----------|---------|
| Interaction/Normal | State |
| Interaction/Light | State |
| Interaction/Strong | State |

#### Safe Area

| 컴포넌트 | 프로퍼티 |
|----------|---------|
| Safe Area/Status | Platform |
| Safe Area/Bottom | Platform |

#### Ratio

| 컴포넌트 | 프로퍼티 |
|----------|---------|
| Ratio/Vertical | Ratio |
| Ratio/Horizontal | Aspect Ratio |

---

## 브레이크포인트 (Breakpoints)

| 분류 | 사이즈 | 대응 기기 |
|------|--------|----------|
| `xs` | 768px 미만 | 모바일 |
| `sm` | 768px 이상 ~ 992px 미만 | 태블릿 세로 |
| `md` | 992px 이상 ~ 1200px 미만 | 태블릿 가로 |
| `lg` | 1200px 이상 ~ 1600px 미만 | 데스크톱 |
| `xl` | 1600px 이상 | 데스크톱 (와이드) |

### CSS Media Query

```css
/* xs — 모바일 (기본값, mobile-first) */
/* 별도 미디어 쿼리 없이 기본 스타일 작성 */

/* sm — 태블릿 세로 */
@media (min-width: 768px) { }

/* md — 태블릿 가로 */
@media (min-width: 992px) { }

/* lg — 데스크톱 */
@media (min-width: 1200px) { }

/* xl — 데스크톱 와이드 */
@media (min-width: 1600px) { }
```

### Tailwind 기준 (커스텀 설정)

```javascript
// tailwind.config.js
module.exports = {
  theme: {
    screens: {
      sm: '768px',   // 태블릿 세로
      md: '992px',   // 태블릿 가로
      lg: '1200px',  // 데스크톱
      xl: '1600px',  // 데스크톱 와이드
    }
  }
}
```

### 뷰포트 너비 토큰 (Component Collection 참고)

| 토큰 | 값 |
|------|-----|
| Value/Width/Viewport/lg | 1100px (콘텐츠 최대 너비) |
| Value/Width/Viewport/xl | 1440px (콘텐츠 최대 너비) |
| Value/Margin/Platform | 20px (좌우 여백) |

---

## CSS Custom Properties 예시

```css
:root {
  /* Primary */
  --color-primary-normal: #03aea0;
  --color-primary-strong: #009e91;
  --color-primary-heavy: #028b80;

  /* Label */
  --color-label-strong: #000000;
  --color-label-normal: #030712;
  --color-label-neutral: rgba(30, 41, 57, 0.88);
  --color-label-alternative: rgba(62, 74, 92, 0.61);
  --color-label-assistive: rgba(62, 74, 92, 0.28);
  --color-label-disable: rgba(62, 74, 92, 0.16);

  /* Background */
  --color-bg-normal: #ffffff;
  --color-bg-alternative: #f3f4f6;

  /* Status */
  --color-status-positive: #00c950;
  --color-status-cautionary: #ff6900;
  --color-status-negative: #fb2c36;

  /* Line */
  --color-line-normal: rgba(92, 102, 118, 0.22);
  --color-line-neutral: rgba(92, 102, 118, 0.16);
  --color-line-alternative: rgba(92, 102, 118, 0.08);

  /* Fill */
  --color-fill-normal: rgba(92, 102, 118, 0.08);
  --color-fill-strong: rgba(92, 102, 118, 0.16);

  /* Material */
  --color-dimmer: rgba(3, 7, 18, 0.52);
}
```
