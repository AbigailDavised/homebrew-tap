# 🍺 ChineseWorkSheet Homebrew Tap

[![Tap Maintenance](https://img.shields.io/badge/tap-active-brightgreen.svg)](https://github.com/AbigailDavised/homebrew-tap)
[![Homebrew](https://img.shields.io/badge/homebrew-chineseworksheet--cli-blue.svg)](https://github.com/AbigailDavised/homebrew-tap/blob/main/Formula/chineseworksheet-cli.rb)
[![Platform: macOS & Linux](https://img.shields.io/badge/platform-macOS%20%7C%20Linux-lightgrey.svg)](https://chineseworksheet.com)
[![License: MIT](https://img.shields.io/badge/license-MIT-yellow.svg)](./LICENSE)

Official Homebrew Tap maintaining command-line tools and Model Context Protocol (MCP) clients for [**ChineseWorkSheet (chineseworksheet.com)**](https://chineseworksheet.com).

This tap packages `chineseworksheet-cli`, a native terminal utility for educators, linguists, and software engineers to calculate physical Chinese handwriting worksheet grid geometry, verify Hanzi stroke order rules, analyze vocabulary against HSK 3.0 standards, and convert Mandarin Pinyin tone formats offline or in automated CI/CD pipelines.

---

## ⚡ Quick Start

### 1. Tap this repository
```bash
brew tap AbigailDavised/tap
```

### 2. Install `chineseworksheet-cli`
```bash
brew install chineseworksheet-cli
```

### 3. Verify installation
```bash
chineseworksheet --help
# or
chineseworksheet-cli --help
```

---

## 🔧 Features & Capabilities

`chineseworksheet-cli` connects directly to [ChineseWorkSheet](https://chineseworksheet.com)'s stateless computation engines and provides six core functional commands:

### 1. Vector Grid Geometry Computation
Computes exact physical millimeter dimensions, cell counts, padding, and print boundaries for ISO A4 and US Letter sheets across classical Chinese practice grid types:
- **Tian Zi Ge (田字格)**: Classical quadrant grid for character centering.
- **Mi Zi Ge (米字格)**: 8-directional compass grid for stroke proportions.
- **Jiu Gong Ge (九宫格)**: 9-square grid for structural radical balancing.
- **Hui Zi Ge (回字格)**: Nested concentric boundary grid for density control.

```bash
# Calculate A4 Tian Zi Ge grid specifications with 16mm box size
chineseworksheet call calculate_worksheet_grid_geometry '{"paperSize":"A4","gridType":"tian_zi_ge","boxSizeMm":16}'
```

### 2. Official Ministry of Education Stroke Order Verification
Retrieves authoritative stroke order rules (e.g., horizontal before vertical, top-to-bottom, left-to-right, outside-before-inside, center-before-sides) and decomposes characters into standard calligraphy stroke primitives (横, 竖, 撇, 捺, 点, 提, 折, 钩).

```bash
chineseworksheet call lookup_chinese_stroke_order_rules '{"hanziCharacter":"永"}'
```

### 3. HSK 3.0 & 2.0 Vocabulary Difficulty Analyzer
Analyzes vocabulary paragraphs or character lists, classifying words into official HSK 3.0 tiers (Band 1 through Band 9) and CEFR language proficiency equivalents (A1 to C2).

```bash
chineseworksheet call analyze_hsk_vocabulary_level '{"text":"今天的天气非常好，我们一起去公园散步吧。"}'
```

### 4. Mandarin Pinyin Diacritic & Tone Converter
Converts between numbered Pinyin (e.g. `zhong1 wen2`) and Unicode tone marks (`zhōng wén`), decomposes syllables into Initial/Final/Tone, and applies standard vowel placement hierarchy.

```bash
chineseworksheet call convert_pinyin_tone_format '{"pinyinText":"ni3 hao3 ma"}'
```

### 5. Kangxi 214 Radicals Decomposition
Explores semantic Kangxi radicals with stroke counts, structural positions, and high-frequency character examples.

```bash
chineseworksheet call lookup_kangxi_radical_info '{"radical":"氵"}'
```

### 6. Curriculum Practice Pack Generator
Generates structured handwriting lesson plans and direct vector PDF worksheet links matching student grade level and proficiency targets.

```bash
chineseworksheet call recommend_chinese_practice_pack '{"learnerLevel":"beginner","ageGroup":"elementary"}'
```

---

## 🌐 Official Web Workbenches

For interactive vector PDF generation, live browser previews, and printable custom sheets, visit:

- 🖨️ **[Custom Hanzi Worksheet Generator](https://chineseworksheet.com/generator)**: Generate customized printable A4/Letter PDF worksheets with stroke order guides and Pinyin tone bars.
- ✍️ **[Hanzi Stroke Order & Calligraphy Rules](https://chineseworksheet.com/strokes)**: Visual stroke-by-stroke animation and calligraphy rules reference.
- 📊 **[HSK 3.0 Vocabulary Difficulty Grader](https://chineseworksheet.com/hsk-checker)**: Level grading tool for Chinese text corpora.
- 🔤 **[Mandarin Pinyin Tone Converter](https://chineseworksheet.com/pinyin-converter)**: Online converter for tone marks and numeric formats.
- 📖 **[Kangxi 214 Radicals Explorer](https://chineseworksheet.com/radicals)**: Complete radical index and stroke count charts.

---

## 🔒 Security & Packaging

- **Upstream Release**: Cryptographically verified against release tarballs from [registry.npmjs.org/chineseworksheet-cli](https://registry.npmjs.org/chineseworksheet-cli).
- **Stateless MCP Protocol**: Remote tool calls route over secure HTTPS to `https://chineseworksheet.com/api/mcp` with zero credential retention.
- **Audit**: All formulas in this tap conform to Homebrew syntax rules and RuboCop standards.

---

## 📄 License

Distributed under the [MIT License](https://opensource.org/licenses/MIT).

Copyright (c) 2026 [ChineseWorkSheet](https://chineseworksheet.com). All rights reserved.
