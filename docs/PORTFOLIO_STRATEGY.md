# Strategi Portfolio — Senior/Staff Mobile Engineer

**Disusun:** 13 September 2026
**Status:** Hasil riset + keputusan strategi. Siap dieksekusi (lihat roadmap di bagian akhir).
**Sumber brief asli:** `.claude/PORTFOLIO_RESEARCH_BRIEF.md`

## Catatan metodologi (baca dulu — memengaruhi tingkat kepercayaan tiap klaim)

Riset ini dikerjakan lewat dua sub-agent riset paralel + riset langsung, dengan `WebFetch` yang di-restrict oleh network policy: hanya domain `github.com`, `raw.githubusercontent.com`, dan `pub.dev` yang bisa di-fetch langsung. Untuk domain lain (personal blog, Medium, dll), sumber datanya adalah `WebSearch`, yang di lingkungan ini terbukti mengembalikan kutipan spesifik dan detail struktural nyata (bukan cuma ringkasan generik) — tapi tetap **satu langkah lebih lemah** dibanding fetch langsung.

Konvensi penandaan yang dipakai di seluruh dokumen ini:
- **[FAKTA — verified]**: dibuka langsung (GitHub/pub.dev) atau dikonfirmasi silang lewat 2+ pencarian independen.
- **[FAKTA — search-derived]**: hanya dari hasil pencarian, belum dibuka langsung. Diperlakukan sebagai kemungkinan besar benar, tapi bukan bukti kelas satu.
- **[INFERENSI]**: kesimpulan yang ditarik dari fakta di atas, bukan pernyataan langsung dari sumber.
- **[REKOMENDASI]**: keputusan/saran dari saya (Claude), bukan temuan riset.
- **[ASUMSI]**: informasi tentang kamu yang belum dikonfirmasi — perlu kamu verifikasi sebelum dieksekusi.

---

## 1. Research Summary

Pola yang benar-benar muncul dari 14 portfolio mobile engineer nyata yang diverifikasi (bukan dari opini "best practices" generik):

1. **GitHub/OSS output sering menjadi portfolio yang sesungguhnya**, lebih kuat dari website pribadi itu sendiri — bintang, jumlah download, README yang matang membawa kredibilitas lebih dari copywriting di landing page. [FAKTA — verified: Felix Angelov/Bloc 2.04M downloads di pub.dev, Chris Banes/Haze-Accompanist dengan video demo di README]
2. **Halaman resume terpisah dari halaman "About"**, ditulis naratif (bukan bullet list) pada level Staff+ — resume jadi tempat mengklaim scope kerja secara eksplisit. [FAKTA — verified: chrisbanes.me/resume, search-derived: jakewharton.com/résumé]
3. **Metrik yang bisa diverifikasi menggantikan klaim kualitatif** — "6.5 juta install, diakuisisi", "2.04M downloads", "80k+ pengguna" — bukan "berpengalaman membangun aplikasi berkualitas tinggi". [FAKTA — verified/search-derived campuran]
4. **Tidak ada satupun dari 14 portfolio yang punya case study formal bergaya "Problem/Architecture/Trade-off/Outcome" yang terstruktur penuh per proyek.** Pendekatan terdekat adalah artikel arsitektur panjang (Vadim Bulavin) atau visualizer interaktif (Sujit More). **Ini celah nyata, bukan norma yang harus ditiru** — berarti membuat case study yang benar-benar terstruktur adalah differentiator, bukan sekadar mengikuti tren. [INFERENSI dari pola #7 di riset benchmark]
5. **Blog teknis rutin (bukan sekali tulis) adalah sinyal otoritas jangka panjang** yang berulang di banyak portfolio kuat. [FAKTA — search-derived: avanderlee.com (200+ issue), vadimbulavin.com]
6. Portfolio dengan **satu tesis yang konsisten** (mis. Chris Banes: "UI craft" di seluruh Android/iOS/KMP/Web) terasa lebih kredibel di level Staff+ dibanding daftar proyek yang tersebar tanpa benang merah. [INFERENSI]
7. **Friction "harus install dulu" untuk aplikasi mobile diselesaikan TANPA link App Store/TestFlight publik** di seluruh 14 sampel — nol contoh ditemukan. Solusinya selalu salah satu dari: video demo tertanam di README, widget interaktif tiruan (bukan app aslinya), package OSS yang bisa langsung di-install, atau metrik yang menggantikan demo sama sekali. [FAKTA — verified, "absennya" ini eksplisit dicari dan tidak ditemukan]

## 2. Benchmark Table (14 portfolio terverifikasi)

| # | Nama | URL | Seniority | Yang membuat kuat | Yang kurang |
|---|---|---|---|---|---|
| 1 | Felix Angelov | felangel.dev | Principal (VGV) | Bloc: 12.5k★, 2.04M downloads pub.dev, verified publisher | Situs pribadi tipis, semua kredibilitas dari GitHub |
| 2 | Jake Wharton | jakewharton.com | De facto Staff/Principal | Resume naratif prosa, arsip talks 2015–skrg | Tidak ada label seniority eksplisit |
| 3 | Chris Banes | chrisbanes.me | **Staff+ (eksplisit)** | Template terkuat: resume kuantitatif + tesis konsisten + video demo di README OSS | Fokus Android/Compose saja, tak ada sudut fintech |
| 4 | Antoine van der Lee | avanderlee.com | **Staff (eksplisit)** | Produk indie (RocketSim, 80k+ user) sbg bukti saat kerja utama confidential | Pengalaman Staff WeTransfer tak dibedah jadi case study |
| 5 | Vadim Bulavin | vadimbulavin.com | Senior | Artikel arsitektur = case study implisit + kredensial keamanan formal | Level Senior, bukan Staff |
| 6 | Rody Davis | rodydavis.com | DevRel Senior | Demo interaktif live (piano Flutter) di web | Banyak proyek kecil, kurang dalam |
| 7 | Dane Mackier (FilledStacks) | filledstacks.com | Konsultan/CEO | Pola arsitektur pribadi jadi package bernama (Stacked) | Bentuknya bisnis konten, bukan portfolio engineer |
| 8 | Andrea Bizzotto | codewithandrea.com | Flutter GDE | Kredensial pihak ketiga (GDE) | Bentuk bisnis kursus |
| 9 | Reso Coder | resocoder.com | Tidak diungkap | Fokus Clean Architecture + testing | Pseudonim, tak bisa ditransfer ke job search |
| 10 | **Sujit More** | sujitmore21.github.io | Senior (self-titled) | **Paling relevan**: fintech eksplisit, visualizer Clean Architecture interaktif, widget market data tiruan | Breadth over curation — proyek klien lintas industri tak fokus |
| 11 | Jitendra Mistry | jittumistry.github.io | Senior | Situs sendiri = Flutter web (bukti skill) | Canvaskit-only → buruk untuk SEO/crawlability |
| 12 | Sakhawat Hossain | shakiz.github.io | Senior (LinkedIn) | RFC migrasi native→Flutter (kerja level senior) | RFC itu cuma disebut 1 baris, tak dijadikan case study |
| 13 | Tanel Teemusk | teemusk.com | Tech Lead | Struktur nav konvensional rapi | Sekadar daftar proyek, tanpa kedalaman |
| 14 | Manu Rodriguez | manurodriguez.dev | Tidak eksplisit | CI/CD ownership disebut spesifik | Bukti paling tipis di seluruh sampel |

*(Detail lengkap tiap entri dengan sitasi ada di transkrip riset; ringkasan ini untuk keperluan strategi.)*

## 3. Key Patterns (muncul di 3+ portfolio)

1. GitHub/OSS sebagai portfolio utama.
2. Halaman resume terpisah, naratif.
3. Blog/artikel teknis rutin sebagai sinyal otoritas berkelanjutan.
4. Angka adopsi (stars/downloads/installs/subscribers) menggantikan klaim kualitatif.
5. Artikel pola arsitektur = case study implisit.
6. Struktur nav Portfolio + Resume + Blog + Contact yang sederhana dan flat (bukan nested tree).
7. **Tidak ada** template case study formal yang benar-benar dipakai — ini kesempatan, bukan standar yang harus disalin.

## 4. Anti-patterns (yang harus dihindari)

- **Breadth over curation** — Sujit More dan Jitendra Mistry sama-sama melemahkan diri dengan mencantumkan proyek klien lintas-industri yang tidak berhubungan (payment gateway, sistem pelabuhan, aplikasi vegan food dalam satu portfolio yang sama). [FAKTA — verified]
- **Portfolio berbasis Flutter web murni canvaskit-only** membuat konten nyaris tak terindeks mesin pencari dan tool otomatis. [FAKTA — verified via inspeksi struktur repo]
- **Mengklaim level senior tanpa bukti** — beberapa entri (Manu Rodriguez, Tanel Teemusk) menyebut scope kerja senior tapi tidak membedahnya jadi bukti konkret, hasilnya tetap terasa generik. [INFERENSI]
- **Bergeser jadi "content business"** (kursus, konsultan) alih-alih portfolio engineer — FilledStacks dan Code With Andrea menunjukkan di mana batas itu, kalau positioning kamu Senior/Staff Engineer, jangan sampai situsnya terasa seperti jualan kursus.
- **Melakukan pekerjaan level-senior (RFC migrasi, keputusan arsitektur) tapi tidak pernah menuliskannya** — Sakhawat Hossain menyebut RFC migrasi native→Flutter cuma 1 baris. Ini persis risiko terbesar buat kamu: kamu **punya** pengalaman migrasi asli, jangan sampai berakhir jadi 1 baris di CV.
- Tidak ditemukan satupun contoh link TestFlight/APK publik untuk app milik perusahaan — jangan mencoba melakukan ini untuk kerja fintech/banking kamu, ini bukan soal teknis tapi soal kepemilikan/kerahasiaan.

## 5. Differentiation: Junior vs Mid vs Senior vs Staff (evidence-based)

Sumber utama: **Monzo Engineering Progression Framework** [FAKTA — verified langsung dari `raw.githubusercontent.com/monzo/progression-framework`] — dipilih sebagai sumber primer karena ini **satu-satunya ladder mobile-specific DAN fintech-specific** yang ditemukan, jadi paling relevan untuk positioning kamu:

- **L3 (~mid/senior awal)**: "Delivers large well-defined tasks and solves small scope not-well-defined problems"; membangun "non-trivial, coordinated app flows with multiple services and data sources"; mentoring engineer baru.
- **L4 (~senior)**: "Solves ambiguous problems"; memimpin proposal skala kecil-menengah; kode yang jadi "definitive example" untuk engineer baru; **"owns large scale architectural changes to the entire codebase"** (network lifecycle, data model, navigasi, modularisasi).
- **L5 (~staff)**: "Solves the 'hard problem' in a project"; **"a technical authority for iOS/Android on multiple teams"**; "anticipates large or significant platform changes"; menanamkan prinsip engineering di seluruh squad; jadi alasan orang lain bergabung ke perusahaan.
- **L6 (~principal)**: bertanggung jawab atas delivery proyek mission-critical; membantu lintas-squad bekerja lebih efektif; menarik hire senior lain.

Dikuatkan silang oleh sumber lain: **Artsy** [FAKTA — verified] membedakan Staff sebagai "drive change and impact across multiple teams" + "influences org-level architecture"; **CircleCI** [FAKTA — search-derived] membingkai transisi E3→E4 sebagai pergeseran dari "menjadi IC yang sangat efektif" ke "melipatgandakan dampak lewat orang lain"; **Spotify** [FAKTA — search-derived] mendefinisikan arketipe Staff+ (Strategist/Specialist/Pioneer) alih-alih satu ladder linear.

**[INFERENSI] Kesimpulan paling penting untuk kamu**: pembeda Senior vs Staff bukan "menulis kode lebih banyak/lebih baik", tapi (a) **kepemilikan perubahan arsitektur skala besar/lintas tim**, (b) **menyelesaikan ambiguitas** — bukan mengerjakan tugas yang sudah didefinisikan orang lain, dan (c) **otoritas teknis yang diakui lintas tim/disiplin**. Pengalaman migrasi native→Flutter skala besar tanpa rewrite total yang sudah kamu punya **persis** cocok dengan kriteria L4/L5 Monzo ini — ini bukan proyek portfolio baru yang perlu dibangun, ini bukti yang sudah ada dan tinggal dipresentasikan dengan benar (lihat §9).

## 6. Positioning Recommendation

**[REKOMENDASI]** Jangan posisikan diri sebagai "Flutter Developer" (terlalu sempit, terkesan junior/mid) maupun sekadar "Senior Mobile Engineer" generik (tidak membedakan dari ribuan profil serupa). Berdasarkan evidence di atas:

> **Mobile Engineer (Flutter/Android/iOS) dengan pengalaman produksi 5+ tahun di fintech/banking — spesialisasi pada arsitektur Flutter, migrasi native-ke-Flutter skala besar secara bertahap, dan rekayasa native integration, security, serta correctness finansial.**

Alasan (bukan opini kosong):
- Cocok dengan pola #6 (satu tesis konsisten, seperti Chris Banes) — tesis kamu adalah **"financial-grade mobile engineering"**, bukan sekadar "saya bisa Flutter".
- Mengklaim label "Staff" secara eksplisit di portfolio **tidak direkomendasikan** — title internal perusahaan tidak bisa diverifikasi recruiter, dan pola dari Chris Banes/Felix Angelov menunjukkan **scope kerja yang dijelaskan konkret lebih meyakinkan daripada label**. Cukup nyatakan fakta ("Staff Software Engineer" sebagai title saat ini kalau memang ingin dicantumkan) lalu biarkan case study membuktikan level Staff lewat bahasa yang match kriteria Monzo L4/L5 (arsitektur, ambiguitas, otoritas lintas tim).
- Domain fintech/banking sebagai spesialisasi adalah **kelangkaan yang bernilai** — dari 14 benchmark, hanya Sujit More yang eksplisit fintech, dan itupun lemah di kurasi. Ruang untuk diferensiasi di sini besar.

## 7. Portfolio Information Architecture

**[REKOMENDASI, memvalidasi ulang draf awal di brief]** Draf struktur nested (`Engineering > Architecture/Performance/Native Integration/Security`) di brief awal **tidak divalidasi oleh satupun dari 14 benchmark** — semua portfolio nyata memakai nav flat, tidak lebih dari 5–6 item top-level. Struktur nested itu ditolak.

Struktur final:

```
Home        → hero: positioning statement + 3 bukti konkret + CTA ke 2 case study utama
Work         → 2 flagship case study (dalam) + 1-2 entri pendukung (ringkas, jujur soal provenance)
Engineering Notes → 2-3 artikel teknis (bukan blog rutin dulu — realistis untuk individual)
Open Source  → envflare_cli, flutter-package-core, flutter-dsl (setelah audit konfidensialitas, lihat §9)
About        → bio naratif 1 halaman (prosa, bukan bullet)
Resume       → halaman terpisah, bisa diunduh PDF
```

Ini flat, sesuai pola #6, dan menghindari kesan "content business" (anti-pattern FilledStacks/Code With Andrea) karena tidak ada nav "Courses"/"Services".

**Catatan teknis khusus (karena repo ini sendiri adalah project Flutter):** menjalankan portfolio di Flutter web itu tematis pas (bukti skill langsung, pola Jitendra Mistry) TAPI harus hindari jebakan canvaskit-only (anti-pattern #2). **[REKOMENDASI]**: pakai Flutter web dengan renderer yang menghasilkan DOM/text asli untuk konten kritikal (nama, headline, ringkasan case study, link), atau paling tidak sediakan fallback HTML/meta tag yang terindeks. Kalau ini butuh effort ekstra yang tidak sepadan, alternatif yang lebih aman untuk SEO adalah static site biasa (mis. Flutter web hanya untuk 1 komponen demo interaktif yang ditanam, bukan seluruh situs). Ini keputusan teknis yang perlu didiskusikan lagi saat Phase 1 — ditandai sebagai keputusan terbuka, bukan final.

## 8. Flagship Project Strategy

Perbandingan opsi (kriteria: recruiter impact, engineering depth, credibility, time, maintenance, differentiation):

| Opsi | Recruiter impact | Depth | Maintenance cost | Risiko |
|---|---|---|---|---|
| A: 1 produk besar | Tinggi kalau eksekusinya sempurna | Tinggi tapi sempit (cuma 1 sudut) | Sedang | Single point of failure — tak bisa buktikan native/security/migrasi kalau app-nya local-only |
| B: 2–3 flagship | Seimbang | Bisa dalam di tiap satu, kalau jumlahnya dijaga kecil | Sedang-tinggi | Kalau semua "app", jadi mirip Sujit More (breadth) |
| C: 4–5 proyek kecil | Rendah-sedang | Dangkal per proyek | Tinggi (maintenance banyak app) | **Anti-pattern paling jelas** dari riset — breadth over curation terbukti melemahkan 2 dari 14 benchmark |

**[REKOMENDASI — Final Decision]**: **Opsi B yang dimodifikasi — bukan 2-3 aplikasi yang serupa, tapi 2 flagship yang BERBEDA JENIS:**

1. **Flagship #1 — Produk nyata**: Saldough (sedang berjalan). Membuktikan product thinking, arsitektur, business logic, money correctness.
2. **Flagship #2 — Case study rekayasa (bukan app baru)**: pengalaman migrasi native→Flutter + native integration + security dari pekerjaan fintech/banking, dipresentasikan sebagai tulisan mendalam (arsitektur, keputusan, trade-off) TANPA membocorkan kode/app milik perusahaan. Ini mengisi celah yang tidak bisa diisi Saldough sendiri (Saldough itu MVP local-storage saja, tidak ada native integration atau migrasi).

Ditambah **bukti pendukung berbiaya-rendah-maintenance**: 1-2 package open source (bukan app), 2-3 artikel teknis. Ini alasannya bukan "karena keren" tapi karena riset presentasi (§ teknik presentasi) menunjukkan case study + artikel + OSS package adalah kombinasi dengan **nol konflik kerahasiaan** — beda dengan mencoba membangun ulang app fintech yang justru berisiko exposure IP kalau terlalu mirip kerja asli.

Kenapa bukan Opsi A murni: satu app besar tidak bisa membuktikan migrasi/native integration/security sekaligus tanpa jadi proyek yang sangat besar untuk dikerjakan sendiri (melanggar constraint #8: jangan terlalu besar untuk dipelihara). Kenapa bukan Opsi C: breadth over curation adalah anti-pattern paling jelas dari riset.

## 9. Project Categories — mana yang perlu dibangun vs cukup case study

| Kategori | Keputusan | Alasan |
|---|---|---|
| 1. Product Engineering | **Bangun** (Saldough) | Sudah berjalan, bukti product thinking end-to-end nyata |
| 2. Complex Domain/Business Logic (money handling) | **Lebur ke Saldough**, jadi 1 artikel terpisah | Saldough sudah punya aturan int-cents/ketepatan rupiah — cukup diekstrak jadi tulisan, tak perlu app baru |
| 3. Mobile Platform/Native Integration | **Case study saja** (+ opsional 1 repo referensi kecil, generik, bukan kode asli perusahaan) | Ini pengalaman nyata dari kerja fintech, tapi kodenya milik perusahaan — tak bisa dipublikasikan; presentasi lewat tulisan adalah satu-satunya jalan aman (lihat teknik #7 di riset presentasi) |
| 4. Performance | **Artikel, bukan project terpisah** | Berdiri sendiri tidak cukup bernilai relatif terhadap effort-nya; lebur ke case study migrasi atau Saldough kalau memang relevan |
| 5. Offline-first/Distributed Data | **Skip** | Tidak ada evidence pengalaman sync/conflict-resolution di background kamu — membangun ini dari nol hanya "supaya terlihat keren", melanggar constraint #6 |
| 6. Security | **Artikel/case study, bukan app terpisah** | Ada preseden nyata (KBTG Life, bank tech org, menulis SSL pinning di Flutter secara publik) — validasi bahwa ini aman dipublikasikan sebagai teknik, bukan bocoran bisnis |

## 10. Existing Work Reuse — hasil audit langsung ke repo

| Repo | Verdict | Alasan |
|---|---|---|
| **Saldough** | Pakai sebagai Flagship #1 | Produk nyata, sedang berjalan, bukan fabrikasi |
| **envflare_cli** | Pakai — Open Source | [FAKTA — verified via baca langsung] CLI Flutter env/flavor management yang riil dan lengkap, tidak menyentuh kode perusahaan mana pun. Tinggal dipoles README (GIF demo, badge) |
| **flutter-package-core** | Pakai bersyarat — Open Source, **butuh audit dulu** | [FAKTA] Monorepo Melos berisi packages `failures`, `models`, dll — persis pola yang sama dengan `advance-mobile-platform`. **[ASUMSI perlu dikonfirmasi]**: apakah ini implementasi orisinal kamu sendiri, atau adaptasi dekat dari pola kerja kantor? Sebelum dipublikasikan sebagai OSS, perlu ditinjau agar tidak ada logic/nama yang bisa dikenali berasal dari repo privat perusahaan |
| **flutter-dsl** | Sama seperti di atas — Open Source bersyarat, butuh audit | [FAKTA] Design-system package (pakai `flutterbook`), pola mirip `mobile_dsl` di referensi arsitektur bank. Audit konfidensialitas dulu |
| **advance-mobile-platform** | **Hati-hati — jangan publikasikan langsung** | [FAKTA] Repo ini punya `.gitlab-ci.yml` dan link dokumentasi Notion — indikasi kuat ini adalah refleksi/adaptasi dari repo privat perusahaan (`gitlab` internal), bukan proyek pribadi murni. Sesuai CLAUDE.md Saldough sendiri: ini dipakai sebagai git dependency dari GitHub karena URL GitLab asli "tidak bisa diakses" — menandakan sumber aslinya privat. **Jangan jadikan ini bagian portfolio publik** tanpa konfirmasi eksplisit bahwa ini bukan turunan langsung dari aset perusahaan |
| **fullstack-autoledger** | **Skip dari flagship** | [FAKTA] Ini web full-stack (React+NestJS), bukan mobile — tidak sesuai positioning "Mobile Engineer". Bisa disebut 1 baris di About kalau mau, tapi tidak masuk Work |
| **new-health-duel** | **Jangan presentasikan sebagai "produk yang saya desain"** | [FAKTA, dari CLAUDE.md repo itu sendiri] Ini dibangun lewat alur agent (Analyzer/Planner/Coder AI) yang secara eksplisit mem-porting pola dari reference project (`fintrack_lite`) — bukan didesain dari nol oleh kamu. Kalau dipakai sama sekali, harus jujur diberi label "latihan arsitektur", bukan flagship. Mengklaim ini sebagai app yang "saya bangun" secara implisit akan melanggar constraint #1 (jangan mengarang) |
| **autoledger-companion-android** | **Skip** | [FAKTA] Scaffold generik dari AI Studio (template Gemini API), bukan produk yang didesain/dikembangkan sebagai portfolio piece |
| **flutter-architecture-studi** / **flutter-architecture-studi-bank** | **JANGAN dipakai sama sekali** | [FAKTA] Repo ini eksplisit adalah referensi arsitektur perusahaan (nama org `KB-FMF`, "Capital Flex"/BCI banking app) — dipakai read-only sebagai acuan internal. Mempublikasikan apa pun yang mirip struktur/nama dari sini berisiko membocorkan informasi konfidensial (melanggar constraint #10) |

## 11. Project Recommendations

| Project | Purpose | Skills demonstrated | Difficulty | Estimated effort | Presentation | Evidence required | Differentiation |
|---|---|---|---|---|---|---|---|
| **Saldough** (Flagship #1) | Product engineering, correctness finansial | Arsitektur, Clean Architecture 3-zona, BLoC, money-as-int-cents, i18n | Sedang-tinggi | Berbulan-bulan (sudah berjalan) | Case study lengkap + screenshot + video screen-recording | App berjalan (screen recording cukup, tak perlu store listing) | Ketepatan angka sampai rupiah terakhir — jarang dibahas eksplisit di benchmark manapun |
| **Migrasi & Native Integration Case Study** (Flagship #2) | Bukti kerja level Staff (L4/L5 Monzo) | Migrasi bertahap tanpa rewrite, MethodChannel, native SDK, arsitektur lintas tim | Tinggi (menulis dengan baik itu sulit) | 1-2 minggu menulis + diagram | Artikel mendalam + diagram arsitektur (anonim/generik) | Tidak perlu app — cukup tulisan tervalidasi jujur | **Tidak ada satupun dari 14 benchmark yang punya case study migrasi sekuat ini** — celah nyata di §1 poin 4 |
| **Security engineering article** (SSL pinning, secure storage, biometric) | Bukti kedalaman security | SSL pinning, secure storage, root/jailbreak detection | Sedang | 3-5 hari/artikel | Artikel teknis + snippet generik (bukan kode asli) | Preseden KBTG Life membuktikan ini aman dipublikasikan | Melengkapi tesis "financial-grade mobile engineering" |
| **envflare_cli** (polish) | Bukti CI/CD & DX tooling | Dart CLI, code generation, schema validation | Rendah (sudah ada) | 1-2 hari poles README+demo GIF | Open Source, pub.dev kalau memungkinkan | GitHub README dengan GIF demo | Tooling nyata, bukan toy project |
| **flutter-package-core / flutter-dsl** (setelah audit) | Bukti modularisasi & extract pattern jadi reusable | Melos monorepo, design system, DI | Rendah-sedang (audit dulu) | 2-3 hari audit + poles | Open Source | Harus lolos audit konfidensialitas dulu | "Owns large scale architectural changes... modularization" — persis kriteria L4 Monzo |

## 12. Case Study Template (final, sudah divalidasi)

Template 15 poin di brief awal (`Problem→Context→Role→Constraints→Approach→Architecture→Technical Decisions→Trade-offs→Implementation→Challenges→Testing→Performance→Outcome→Lessons Learned→Source/Demo`) **tidak ditemukan dipakai utuh oleh siapa pun** di 14 benchmark — kalau dipakai persis, hasilnya kemungkinan terasa seperti template konsultan, bukan tulisan engineer. **[REKOMENDASI]** dipangkas jadi versi yang lebih ramping dan align dengan pola nyata (artikel arsitektur ala Vadim Bulavin + resume naratif ala Chris Banes/Jake Wharton):

```
1. Ringkasan satu paragraf (apa masalahnya, apa hasilnya — bisa dibaca dalam 15 detik)
2. Konteks & constraint nyata (skala, kenapa tidak bisa rewrite total, dsb)
3. Keputusan arsitektur kunci + kenapa (bukan semua keputusan, cuma yang paling berat)
4. Trade-off yang diambil (bukan "semua sempurna" — justru trade-off yang jujur meningkatkan kredibilitas)
5. Tantangan teknis spesifik + cara menyelesaikannya (di sini kedalaman engineering benar-benar terlihat)
6. Hasil/dampak — kalau ada angka nyata pakai angka, kalau tidak ada, JANGAN dikarang (constraint #11) — cukup deskriptif ("migrasi selesai tanpa downtime produksi", dst.)
7. Bukti: screenshot/diagram/screen-recording/link (sesuai §13 di bawah, per jenis proyek)
```

Poin "Testing" dan "Role" dari template asli dilebur ke poin 3 dan 5 (disebut singkat di situ) alih-alih jadi section sendiri — supaya tidak terasa seperti checklist konsultan (menghindari pola "content business" yang jadi anti-pattern).

## 13. Presentation Strategy per Project

| Elemen | Saldough | Case study migrasi/native | Security article | OSS package |
|---|---|---|---|---|
| Hero/Overview | Wajib | Wajib | Wajib | Wajib (README) |
| Screenshots | Wajib | Recommended (diagram, bukan screenshot app kantor) | Optional | Optional |
| Screen-recording pendek | Wajib | Unnecessary | Unnecessary | Optional (kalau ada UI) |
| Interactive demo | Optional (stretch, hindari canvaskit-only) | Unnecessary | Unnecessary | Unnecessary |
| Architecture diagram | Wajib | Wajib | Optional | Recommended |
| Technical decisions/trade-off | Wajib | Wajib | Recommended | Optional |
| Performance/metrics | Optional (kalau memang ada) | Optional | Unnecessary | Optional (pub.dev score dsb) |
| GitHub link | Wajib | Unnecessary (tidak ada kode untuk dibagikan) | Optional (snippet repo generik) | Wajib |
| App Store/Play link | Unnecessary (belum tentu rilis publik) | Unnecessary | Unnecessary | Unnecessary |
| Technical deep dive (artikel) | Recommended | Wajib | Wajib (ini formatnya) | Optional |

## 14. Recruiter Experience (funnel)

- **30 detik**: nama, positioning statement satu kalimat ("Mobile Engineer, 5+ thn fintech/banking, spesialis Flutter architecture & native integration"), 2-3 logo/angka bukti (mis. "migrasi native→Flutter skala besar tanpa rewrite", "package dengan X downloads").
- **2 menit**: scroll ke Work — lihat 2 flagship, paham apa yang pernah dibangun dan seberapa dalam (dari ringkasan 1 paragraf tiap case study, §12 poin 1).
- **5 menit**: buka salah satu case study penuh — bisa verifikasi klaim lewat diagram/screenshot/GitHub link/artikel yang benar-benar ada, bukan janji kosong.
- **15 menit**: eksplorasi Open Source (cek pub.dev/GitHub asli), baca Engineering Notes, download resume.

## 15. Engineering Manager Gap Analysis

Evidence yang harus BISA ditemukan EM di portfolio (dari daftar di brief): architecture ✅ (case study migrasi), technical decision-making ✅, trade-offs ✅, testing — **perlu ditambahkan eksplisit** (belum ada rencana khusus, masukkan ke case study Saldough & migrasi), performance — sebagian (via artikel opsional), native mobile knowledge ✅ (native integration case study), production experience ✅ (5 tahun fintech), debugging — **gap**, belum ada rencana untuk menunjukkan ini secara eksplisit (pertimbangkan 1 paragraf "production debugging story" singkat di case study migrasi), reliability — sebagian, CI/CD ✅ (envflare_cli + disebut di case study), product thinking ✅ (Saldough), scalability — **gap**, tidak terlalu terbukti dari rencana saat ini (bisa disinggung di case study migrasi soal skala aplikasi lama).

**[REKOMENDASI]**: saat menulis case study migrasi, secara sengaja selipkan 1 anekdot debugging produksi dan 1 kalimat soal skala (jumlah user/tim/codebase, digeneralisasi tanpa angka rahasia) untuk menutup 2 gap ini.

## 16. Presentation System

```
Website (Home, positioning jelas)
   ↓
Selected Work (2 flagship, ringkasan 15-detik per proyek)
   ↓
Case Study penuh (screenshot/diagram/screen-recording tergantung jenis proyek)
   ↓
Engineering evidence (artikel teknis, keputusan trade-off, testing)
   ↓
GitHub / pub.dev (bukti yang bisa diverifikasi sendiri oleh recruiter/EM)
```

## 17. Execution Roadmap

**Phase 0 — Preparation & Confidentiality Audit**
- Objective: pastikan tidak ada risiko kebocoran sebelum publikasi apa pun.
- Deliverables: keputusan tertulis mana dari `flutter-package-core`/`flutter-dsl` yang aman dipublikasikan.
- Tasks: audit isi kedua repo dibanding pola `advance-mobile-platform`/`flutter-architecture-studi-bank`; putuskan nama/positioning final; putuskan stack teknis situs (Flutter web vs alternatif, lihat §7).
- Effort: 2-3 hari.
- Dependencies: tidak ada.
- Definition of done: daftar hijau/merah repo per §10 dikonfirmasi oleh kamu secara eksplisit.

**Phase 1 — Portfolio Foundation**
- Objective: wipe repo lama, bangun skeleton situs sesuai IA §7.
- Deliverables: Home, About, Resume, nav kosong untuk Work/Engineering Notes/Open Source.
- Tasks: setup project baru, deploy pipeline (Firebase Hosting sudah ada konfigurasi `.firebaserc`/`firebase.json` di repo — bisa dipakai lagi), tulis positioning statement final & bio naratif.
- Effort: 1 minggu.
- Dependencies: Phase 0 (nama/positioning).
- Definition of done: situs live dengan Home + About + Resume, tanpa proyek dummy.

**Phase 2 — Flagship Project #1 (Saldough)**
- Objective: selesaikan/lanjutkan Saldough sampai titik yang layak jadi case study (tidak harus 100% fitur, tapi core flow harus utuh + korek).
- Deliverables: app berjalan + screen-recording + case study tertulis sesuai §12.
- Tasks: lanjutkan sesuai `TASK_LIST.md` Saldough sendiri; setelah core selesai, tulis case study.
- Effort: mengikuti timeline Saldough yang sudah ada (di luar cakupan estimasi portfolio ini).
- Dependencies: Phase 1 (situs sudah ada tempat menaruh case study).
- Definition of done: 1 case study Saldough live di situs.

**Phase 3 — Flagship Project #2 (Case Study Migrasi & Native Integration)**
- Objective: tulis case study migrasi native→Flutter + native integration, digeneralisasi aman.
- Deliverables: 1 artikel mendalam + 1-2 diagram arsitektur (dibuat baru, bukan screenshot dokumen internal).
- Tasks: outline berdasarkan template §12; review sendiri terhadap constraint kerahasiaan sebelum publish (idealnya juga dicek reviewer lain/legal-adjacent kalau ragu).
- Effort: 1-2 minggu (termasuk revisi kerahasiaan).
- Dependencies: Phase 0.
- Definition of done: artikel live, sudah melewati self-review kerahasiaan.

**Phase 4 — Engineering Evidence Tambahan**
- Objective: perkuat dengan artikel security + poles OSS.
- Deliverables: 1 artikel security (SSL pinning/secure storage), `envflare_cli` dipoles, `flutter-package-core`/`flutter-dsl` dipublikasikan KALAU lolos audit Phase 0.
- Tasks: tulis artikel; tambah GIF demo & badge ke README envflare_cli; publish ke pub.dev kalau relevan.
- Effort: 1 minggu.
- Dependencies: Phase 0 (hasil audit).
- Definition of done: minimal 1 artikel security + 1 OSS project terpoles live.

**Phase 5 — Polish & Launch**
- Objective: quality pass akhir sebelum dibagikan ke recruiter/network.
- Deliverables: cek funnel recruiter (§14) benar-benar berfungsi, cek gap EM (§15) sudah ditutup, resume PDF final.
- Tasks: uji ke 1-2 orang non-teknis dan 1 orang teknis untuk feedback; perbaiki copy; final SEO/meta check kalau pakai Flutter web.
- Effort: 3-5 hari.
- Dependencies: Phase 1-4 selesai.
- Definition of done: situs bisa dipahami recruiter dalam hitungan menit sesuai target di brief awal.

---

## 18. Final Decision

**Kalau saya jadi kamu, portfolio yang akan saya bangun adalah:**

Positioning sebagai *"Mobile Engineer dengan 5+ tahun pengalaman produksi fintech/banking, spesialisasi Flutter architecture, migrasi native-ke-Flutter skala besar, dan native integration/security"* — **bukan** "Flutter Developer", **bukan** mengklaim "Staff" sebagai label di situs.

Alurnya:

```
Positioning ("financial-grade mobile engineering")
   ↓
Portfolio Website (flat nav: Home/Work/Engineering Notes/Open Source/About/Resume)
   ↓
Flagship #1: Saldough — produk nyata, case study lengkap dengan screen-recording
   ↓
Flagship #2: Case study migrasi native→Flutter + native integration — TANPA app baru, murni tulisan+diagram, karena inilah satu-satunya cara aman menunjukkan pengalaman fintech kantor tanpa membocorkan apa pun
   ↓
Engineering Case Study tambahan: artikel security (SSL pinning dkk) — preseden nyata dari bank tech org lain membuktikan ini aman dipublikasikan
   ↓
Open Source: envflare_cli (langsung), flutter-package-core/flutter-dsl (setelah audit kerahasiaan — JANGAN skip audit ini)
   ↓
Presentation: funnel 30 detik → 2 menit → 5 menit → 15 menit (§14)
   ↓
Recruiter Funnel: Website → 2 case study → engineering evidence → GitHub/pub.dev yang bisa diverifikasi sendiri
```

Ini bukan "banyak aplikasi keren" — ini **1 aplikasi nyata + 1 case study tanpa aplikasi + bukti pendukung berbiaya rendah**. Pilihan ini didasarkan pada 3 evidence paling kuat dari riset: (1) breadth-over-curation terbukti melemahkan 2 dari 14 benchmark nyata, (2) tidak ada satupun benchmark yang berhasil membuat case study migrasi/arsitektur yang benar-benar dalam — ini celah yang kamu bisa isi karena kamu punya pengalamannya secara nyata, dan (3) kriteria Staff dari Monzo (satu-satunya ladder fintech+mobile yang ditemukan) persis cocok dengan "arsitektur lintas tim, migrasi ambigu, otoritas teknis" — yang paling pas dibuktikan lewat case study tertulis, bukan app baru.

Risiko terbesar yang harus dikelola secara sadar: jangan sampai `flutter-package-core`/`flutter-dsl`/`advance-mobile-platform` dipublikasikan tanpa audit — ini satu-satunya bagian dari rencana ini yang punya risiko kerahasiaan nyata (§10), sisanya (Saldough, case study yang digeneralisasi, artikel security dengan snippet generik, envflare_cli) sudah aman by design.

---

## 19. Proyek Baru yang Wajib Dibangun (di luar reuse project existing)

**Konteks pertanyaan ini**: rencana di §8-§18 sengaja menghindari membangun app baru untuk kategori native integration/security (§9) karena kode aslinya milik perusahaan. Tapi ini menyisakan satu masalah nyata yang muncul di §14: pada tahap **"5 menit — harus bisa diverifikasi"**, case study migrasi (Flagship #2) cuma berupa tulisan + diagram. Recruiter/EM teknis tidak bisa membuka kode apa pun untuk mengecek klaim itu. Tulisan yang bagus meyakinkan, tapi tulisan yang bisa **diverifikasi dengan cara diklik/dibaca kodenya** jauh lebih kuat — dan itu memerlukan kode baru yang sengaja dibangun generik (bukan reuse, bukan turunan kerja kantor).

**[REKOMENDASI]** Dua proyek ini yang saya nilai *wajib* dibangun dari nol — bukan "karena keren", tapi karena masing-masing menutup gap verifikasi yang teridentifikasi di §14/§15 dan tidak bisa dipenuhi oleh Saldough atau repo existing manapun (§10). Sengaja dibatasi 2, bukan lebih — supaya tidak jatuh ke anti-pattern breadth-over-curation (§4).

### Proyek Baru #1 (prioritas tertinggi) — Reference repo pola migrasi incremental native→Flutter

**Kenapa wajib**: ini satu-satunya cara membuat Flagship #2 (case study migrasi) bisa diverifikasi, bukan sekadar dipercaya. Tanpa ini, bagian portfolio yang paling diferensiatif (§18, poin 2) justru paling lemah di tahap "5 menit" funnel recruiter.

**Scope (generik, aman — bukan tiruan kerja kantor manapun)**:
- Satu "legacy shell" mini (native Android sederhana, boleh dummy) yang mem-boot ke satu Flutter module lewat `MethodChannel`/`FlutterEngine` — mendemonstrasikan pola Strangler Fig: lama dan baru hidup berdampingan.
- Satu contoh **bridge/adapter eksplisit** untuk session/credential antara sisi lama dan sisi Flutter (mis. `LegacySessionAdapter`) — meniru *pola*-nya (adapter sebagai satu-satunya titik silang legacy↔baru), bukan meniru nama kelas/struktur folder dari repo referensi manapun yang pernah kamu baca di kerjaan.
- Feature-flag sederhana untuk switch rute lama vs baru per layar.
- Test untuk bridge-nya (unit test adapter, bukan cuma widget test).
- README dengan 1 diagram arsitektur (boundary legacy↔v2) — diagram inilah yang nanti dipakai ulang di case study Flagship #2, supaya case study dan repo saling menguatkan.

**Yang HARUS dihindari**: jangan pernah menamai kelas/pattern persis seperti yang ada di `flutter-architecture-studi-bank` (mis. jangan pakai nama seperti `ArchitectureBrideController`, `V2ShellPage`, `IsolatedScope` dari repo itu apa adanya) — tulis ulang dengan penamaan dan struktur sendiri. Tujuannya membuktikan kamu paham **pola**-nya, bukan mereproduksi aset perusahaan.

**Roadmap**:
| Tahap | Deliverable | Tasks | Effort (kerja paruh waktu malam/akhir pekan) |
|---|---|---|---|
| A1 — Desain | Outline arsitektur + diagram awal | Tentukan boundary legacy/v2, tentukan 1 fitur contoh yang cukup untuk didemokan (mis. "profile screen" dummy) | 2-3 hari |
| A2 — Legacy shell + bridge | Native shell app + adapter session | Bangun native Android minimal, buat 1 `MethodChannel` bridge, tulis adapter pattern | 1 minggu |
| A3 — Flutter module + routing | Modul Flutter + feature flag routing | Flutter module yang menerima session dari native, feature flag untuk pilih rute lama/baru | 1 minggu |
| A4 — Tests + README + diagram final | Repo siap publish | Unit test adapter, README dengan diagram, tautkan ke case study Flagship #2 | 3-5 hari |

**Definition of done**: repo publik, README menjelaskan pola (bukan kode kantor), diagramnya dipakai juga di case study Flagship #2, ada test yang lulus di CI sederhana (GitHub Actions minimal).

**Estimasi total**: ~3-4 minggu kerja paruh waktu.

### Proyek Baru #2 (prioritas sedang) — Package "app integrity & security policy" untuk Flutter

**Kenapa wajib, dan kenapa bukan sekadar wrapper**: `flutter_secure_storage`, `ssl_pinning_plugin`, `flutter_jailbreak_detection` sudah ada di pub.dev dan sudah matang — membuat versi "saya juga bisa" dari paket-paket ini justru terlihat kurang matang secara judgment (skill yang dinilai di level Staff, per Monzo L5, adalah *menyelesaikan masalah yang ambigu*, bukan mengerjakan ulang yang sudah selesai). **[REKOMENDASI]** yang wajib dibangun bukan wrapper storage/pinning itu sendiri, tapi **lapisan keputusan di atasnya**: sebuah package kecil yang menggabungkan sinyal-sinyal itu (status pinning tervalidasi, hasil deteksi root/jailbreak, ketersediaan secure storage) menjadi satu objek keputusan (`AppIntegrityGate` atau nama serupa) yang dipakai untuk men-gate flow sensitif di aplikasi finansial. Ini menunjukkan **kemampuan desain kebijakan keamanan**, bukan cuma bisa pakai plugin.

**Scope**:
- Native platform code (Kotlin untuk Android, Swift untuk iOS) untuk deteksi root/jailbreak dasar + deteksi debugger-attached — via `MethodChannel` (sekaligus memperkuat bukti native integration, redundan dengan Proyek #1 tapi dari sudut security).
- Satu API publik yang mengombinasikan sinyal-sinyal itu menjadi `IntegrityReport`/`SecurityPosture` dengan level (mis. `trusted`/`degraded`/`blocked`) dan alasan yang bisa dibaca.
- Contoh integrasi dengan cert-pinning check (validasi konfigurasi pinning ada & tidak default/kosong — bukan reimplementasi pinning-nya sendiri, cukup memverifikasi konfigurasinya benar).
- `example/` app yang mendemonstrasikan cara pakai untuk men-gate 1 layar dummy ("transfer money" placeholder).
- README + artikel (ini jadi bahan mentah artikel security di §11/Phase 4 — dua-duanya saling mendukung, bukan pekerjaan terpisah).

**Roadmap**:
| Tahap | Deliverable | Tasks | Effort |
|---|---|---|---|
| B1 — Desain API | Spesifikasi `IntegrityReport`/`SecurityPosture` | Tentukan level & sinyal yang masuk, tentukan native check apa yang benar-benar dibangun sendiri vs cukup didokumentasikan kenapa tidak reinvent (mis. cert pinning validasinya, bukan implementasi TLS-nya) | 2-3 hari |
| B2 — Native checks | Kotlin + Swift root/jailbreak/debugger detection | MethodChannel Android + iOS | 1 minggu |
| B3 — Policy layer + example app | Package + `example/` | Gabungkan sinyal jadi keputusan, bangun demo gating 1 layar | 4-5 hari |
| B4 — Publish + artikel | Live di pub.dev + artikel security | Publish, tulis artikel yang mengacu langsung ke package ini sebagai bukti | 3-5 hari |

**Definition of done**: package live di pub.dev (bukan cuma GitHub), artikel security (§11) menaut ke package ini sebagai bukti konkret, bukan sekadar teori.

**Estimasi total**: ~2.5-3 minggu kerja paruh waktu.

### Prioritas & urutan gabungan dengan roadmap §17

Karena kamu bekerja penuh waktu sebagai Staff SWE, seluruh estimasi effort di atas dihitung sebagai **kerja paruh waktu (malam/akhir pekan)**, bukan hari kerja penuh — ini asumsi eksplisit, koreksi kalau tidak sesuai realita kamu. **[ASUMSI]**

Urutan yang disarankan, disisipkan ke roadmap §17:
1. Selesaikan Phase 0-2 (audit + foundation + Saldough) seperti rencana semula.
2. **Proyek Baru #1** dikerjakan paralel dengan/tepat sebelum Phase 3 (case study migrasi) — supaya diagramnya bisa dipakai bersama.
3. Phase 3 (tulis case study migrasi), sekarang dengan link ke Proyek Baru #1 sebagai bukti yang bisa diklik.
4. **Proyek Baru #2** dikerjakan paralel dengan Phase 4 (artikel security) — dengan alasan yang sama, artikel dan package saling menaut.
5. Phase 5 (polish & launch) seperti semula.

Total tambahan waktu dari 2 proyek baru ini: **~6-7 minggu kerja paruh waktu**, di luar waktu yang sudah dialokasikan untuk Saldough sendiri. Ini bukan waktu kecil — kalau ternyata terlalu berat digabung dengan pekerjaan penuh waktu, prioritaskan **Proyek Baru #1 dulu** (dampaknya ke funnel recruiter lebih besar, karena langsung mem-back-up diferensiator utama di §18) dan jadikan Proyek Baru #2 sebagai stretch goal yang boleh menyusul setelah launch pertama.
