# 🍺 AbigailDavised Homebrew Tap

[![Tap Maintenance](https://img.shields.io/badge/tap-active-brightgreen.svg)](https://github.com/AbigailDavised/homebrew-tap)
[![Formulas](https://img.shields.io/badge/formulas-9%20available-blue.svg)](https://github.com/AbigailDavised/homebrew-tap/tree/main/Formula)
[![License: MIT](https://img.shields.io/badge/license-MIT-yellow.svg)](./LICENSE)

Official Homebrew Tap maintaining production-grade developer utilities, domain calculation engines, and Model Context Protocol (MCP) command-line interfaces.

All formulas are pre-compiled, cryptographically verified against SHA-256 tarball hashes, and run natively across macOS (Apple Silicon / Intel) and Linux.

---

## ⚡ Quick Start

### 1. Tap this repository
```bash
brew tap AbigailDavised/tap
```

### 2. Install any tool
```bash
# Example: Install Chinese worksheet generator CLI
brew install chineseworksheet-cli

# Example: Install travel eSIM data usage calculator CLI
brew install esimtao-cli

# Example: Install French Horn acoustics & fingering reference CLI
brew install hornlib-cli
```

---

## 📦 Available Formulas & Official Workbenches

| [`chineseworksheet-cli`](https://chineseworksheet.com) | Education | `brew install chineseworksheet-cli` | Printable Chinese handwriting worksheet grid geometry, stroke rules & HSK analyzer | [`chineseworksheet.com`](https://chineseworksheet.com) |
| [`esimtao-cli`](https://esimtao.com) | Travel & Utilities | `brew install esimtao-cli` | Global travel eSIM data usage, iPhone/Android compatibility & pricing calculator | [`esimtao.com`](https://esimtao.com) |
| [`chinamedvisit-cli`](https://chinamedvisit.com) | Healthcare | `brew install chinamedvisit-cli` | China Tier-3A hospital medical cost estimator vs US/UK & clinic finder | [`chinamedvisit.com`](https://chinamedvisit.com) |
| [`hornlib-cli`](https://hornlib.com) | Music Education | `brew install hornlib-cli` | French Horn F/Bb double horn fingering charts, transposition & acoustics | [`hornlib.com`](https://hornlib.com) |
| [`mahjonghandbook-cli`](https://mahjonghandbook.com) | Gaming & Recreation | `brew install mahjonghandbook-cli` | American NMJL, Chinese MCR and Japanese Riichi mahjong scoring rules | [`mahjonghandbook.com`](https://mahjonghandbook.com) |
| [`cardworthscanner-cli`](https://cardworthscanner.com) | Collectibles | `brew install cardworthscanner-cli` | TCG Pokemon, MTG, Yugioh card market pricing & condition grading | [`cardworthscanner.com`](https://cardworthscanner.com) |
| [`locatepic-cli`](https://locatepic.com) | OSINT & Forensics | `brew install locatepic-cli` | Visual OSINT geolocation forensic clues & EXIF photo metadata scanner | [`locatepic.com`](https://locatepic.com) |
| [`paintcolormatcher-cli`](https://paintcolormatcher.com) | Design & Architecture | `brew install paintcolormatcher-cli` | Sherwin-Williams & Benjamin Moore paint color delta-E matcher | [`paintcolormatcher.com`](https://paintcolormatcher.com) |
| [`labelqueue-cli`](https://labelqueue.com) | Office & Productivity | `brew install labelqueue-cli` | Avery printable shipping & return address label layout generator | [`labelqueue.com`](https://labelqueue.com) |

---

## 🛠️ Usage Examples

Each formula exposes both a full binary name and a concise domain alias:

```bash
# 1. Chinese Handwriting Worksheet Geometry (ChineseWorkSheet)
chineseworksheet tools
chineseworksheet demo
chineseworksheet call calculate_worksheet_grid_geometry '{"paperSize":"A4","gridType":"tian_zi_ge","boxSizeMm":16}'

# 2. Travel eSIM Data Usage & Compatibility (EsimTao)
esimtao demo
esimtao call calculate_esim_data_usage '{"days":7,"dailyUsageLevel":"moderate","hotspotShare":false}'

# 3. China Hospital Cost Estimator (ChinaMedVisit)
chinamedvisit demo
chinamedvisit call estimate_china_medical_cost '{"procedure":"PET-CT scan","currency":"USD"}'

# 4. French Horn Acoustics & Intonation (HornLib)
hornlib demo
hornlib call lookup_french_horn_fingering '{"note":"G4","horn_type":"double"}'
```

---

## 🔒 Security & Verification

- Every formula is signed and pinned to an immutable release package on [registry.npmjs.org](https://registry.npmjs.org).
- Integrates seamlessly with remote stateless MCP endpoints over Streamable HTTP (`POST /api/mcp`).
- Distributed under the permissive [MIT License](https://opensource.org/licenses/MIT).

---

## 🤝 Contributing & Issues

Found a bug or need a feature in any of our CLIs? Please open an issue at the respective project repository or in this tap's [issue tracker](https://github.com/AbigailDavised/homebrew-tap/issues).
