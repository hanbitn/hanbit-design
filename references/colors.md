# 한빛 Design System — 색상 토큰 레퍼런스

SKILL.md에 없는 전체 색상 정보가 필요할 때 이 파일을 읽는다.

## Atomic 팔레트 (원시 색상)

Atomic은 Semantic 토큰의 소스다. UI 구현 시 **직접 사용하지 말고** Semantic 토큰을 쓴다.

### Common

| 토큰 | HEX |
|------|-----|
| Common/100 | `#000000` |
| Common/0 | `#ffffff` |

### Neutral (무채색)

| 토큰 | HEX | 토큰 | HEX |
|------|-----|------|-----|
| Neutral/5 | `#fafafa` | Neutral/55 | `#666666` |
| Neutral/10 | `#f5f5f5` | Neutral/60 | `#525252` |
| Neutral/15 | `#ededed` | Neutral/65 | `#494949` |
| Neutral/20 | `#e5e5e5` | Neutral/70 | `#404040` |
| Neutral/25 | `#dcdcdc` | Neutral/75 | `#383737` |
| Neutral/30 | `#d4d4d4` | Neutral/80 | `#262626` |
| Neutral/35 | `#c5c5c5` | Neutral/90 | `#171717` |
| Neutral/40 | `#b0afaf` | Neutral/95 | `#0a0a0a` |
| Neutral/45 | `#929292` | | |
| Neutral/50 | `#737373` | | |

### Cool Neutral (블루 쿨 뉴트럴 — 기본 세트 B)

| 토큰 | HEX | 토큰 | HEX |
|------|-----|------|-----|
| Cool Neutral/5 | `#f9fafb` | Cool Neutral/55 | `#5c6676` |
| Cool Neutral/10 | `#f3f4f6` | Cool Neutral/60 | `#4a5565` |
| Cool Neutral/15 | `#ebedf0` | Cool Neutral/65 | `#3e4a5c` |
| Cool Neutral/20 | `#e5e7eb` | Cool Neutral/70 | `#364153` |
| Cool Neutral/25 | `#dcdfe4` | Cool Neutral/75 | `#2f3849` |
| Cool Neutral/30 | `#d1d5dc` | Cool Neutral/80 | `#1e2939` |
| Cool Neutral/35 | `#b7beca` | Cool Neutral/90 | `#101828` |
| Cool Neutral/40 | `#99a1af` | Cool Neutral/95 | `#030712` |
| Cool Neutral/45 | `#7a8393` | | |
| Cool Neutral/50 | `#6a7282` | | |

### Emerald (브랜드 Primary)

| 토큰 | HEX | 토큰 | HEX |
|------|-----|------|-----|
| Emerald/5 | `#ecfdf5` | Emerald/55 | `#009e91` |
| Emerald/10 | `#cdefec` | Emerald/60 | `#028b80` |
| Emerald/15 | `#b8e4e1` | Emerald/65 | `#007c72` |
| Emerald/20 | `#9adfd9` | Emerald/70 | `#026860` |
| Emerald/25 | `#89dad3` | Emerald/75 | `#006159` |
| Emerald/30 | `#68cec6` | Emerald/80 | `#005a53` |
| Emerald/35 | `#4fc9bf` | Emerald/90 | `#004640` |
| Emerald/40 | `#35beb3` | Emerald/95 | `#012320` |
| Emerald/45 | `#20b3a7` | | |
| Emerald/50 | `#03aea0` | | |

### Red / Orange / Yellow / Lime / Green / Cyan / Sky / Blue / Purple / Pink

각 팔레트는 `/5 ~ /95` 스텝으로 구성. 전체 HEX 값은 `references/full-reference.md` (또는 `hanbit-design-system.md`)를 참조.

---

## Semantic 토큰 전체

### Primary (Emerald 기반)

| 토큰 | 참조 | HEX |
|------|------|-----|
| Primary/Normal | {Emerald/50} | `#03aea0` |
| Primary/Strong | {Emerald/55} | `#009e91` |
| Primary/Heavy | {Emerald/60} | `#028b80` |

### Label (텍스트)

| 토큰 | 값 | 용도 |
|------|-----|------|
| Label/Strong | `#000000` | 가장 강한 강조 |
| Label/Normal | `#030712` | 기본 본문 |
| Label/Neutral | `rgba(30, 41, 57, 0.88)` | 보조 텍스트 |
| Label/Alternative | `rgba(62, 74, 92, 0.61)` | 설명·캡션 |
| Label/Assistive | `rgba(62, 74, 92, 0.28)` | 플레이스홀더 |
| Label/Disable | `rgba(62, 74, 92, 0.16)` | 비활성 |

### Background

| 토큰 | 값 | 용도 |
|------|-----|------|
| Background/Normal/Normal | `#ffffff` | 페이지 배경 |
| Background/Normal/Alternative | `#f3f4f6` | 섹션 배경 |
| Background/Elevated/Normal | `#ffffff` | 플로팅 기본 |
| Background/Elevated/Alternative | `#d1d5dc` | 플로팅 보조 |

### Line / Fill / Material

| 토큰 | 값 |
|------|-----|
| Line/Normal | `rgba(92, 102, 118, 0.22)` |
| Line/Neutral | `rgba(92, 102, 118, 0.16)` |
| Line/Alternative | `rgba(92, 102, 118, 0.08)` |
| Fill/Normal | `rgba(92, 102, 118, 0.08)` |
| Fill/Strong | `rgba(92, 102, 118, 0.16)` |
| Fill/Alternative | `rgba(92, 102, 118, 0.05)` |
| Material/Dimmer | `rgba(3, 7, 18, 0.52)` |

### Status

| 토큰 | HEX | 용도 |
|------|-----|------|
| Status/Positive | `#00c950` | 성공 |
| Status/Cautionary | `#ff6900` | 경고 |
| Status/Negative | `#fb2c36` | 오류 |

### Accent (Background / Foreground)

| 컬러 | Background (/40) | Foreground (/60) |
|------|------------------|------------------|
| Orange | `#ff8904` | `#f54900` |
| Lime | `#9ae600` | `#5ea500` |
| Cyan | `#00d3f3` | `#0092b8` |
| Sky | `#00bcff` | `#0084d1` |
| Blue | `#51a2ff` | `#155dfc` |
| Purple | `#c27aff` | `#9810fa` |
| Pink | `#fb64b6` | `#e60076` |

### Interaction / Inverse

| 토큰 | 값 |
|------|-----|
| Interaction/Inactive | `#b7beca` (Cool Neutral/35) |
| Interaction/Disable | `#f9fafb` (Cool Neutral/5) |
| Inverse/Background | `#030712` |
| Inverse/Label | `#f3f4f6` |
| Inverse/Primary | `#03aea0` |
