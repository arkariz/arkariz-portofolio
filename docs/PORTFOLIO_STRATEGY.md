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

## 6. Positioning Recommendation — ✅ DIKONFIRMASI PEMILIK (13 Sep 2026)

**[REKOMENDASI — DITERIMA]** Jangan posisikan diri sebagai "Flutter Developer" (terlalu sempit, terkesan junior/mid) maupun sekadar "Senior Mobile Engineer" generik (tidak membedakan dari ribuan profil serupa). Berdasarkan evidence di atas:

> **Mobile Engineer (Flutter/Android/iOS) dengan pengalaman produksi 5+ tahun di fintech/banking — spesialisasi pada arsitektur Flutter, migrasi native-ke-Flutter skala besar secara bertahap, dan rekayasa native integration, security, serta correctness finansial.**

Ini adalah positioning statement final — dipakai apa adanya di Home/hero, About, dan resume (§7, §14).

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
Open Source  → envflare_cli, flutter-package-core (setelah cleanup Firebase example, §10) — flutter-dsl DIKELUARKAN (gagal audit)
About        → bio naratif 1 halaman (prosa, bukan bullet)
Resume       → halaman terpisah, bisa diunduh PDF
```

Ini flat, sesuai pola #6, dan menghindari kesan "content business" (anti-pattern FilledStacks/Code With Andrea) karena tidak ada nav "Courses"/"Services".

### Tech stack situs — ✅ DIKONFIRMASI PEMILIK (13 Sep 2026): tidak pakai Flutter web

Keputusan pemilik: repo `personal_portofolio` (Flutter) yang ada sekarang **tidak dilanjutkan** — situs portfolio dibangun ulang dengan front-end framework web biasa, bukan Flutter web. Ini sejalan dengan temuan audit di §4/anti-pattern #2 (Jitendra Mistry: portfolio canvaskit-only nyaris tak terindeks mesin pencari) — jadi keputusan ini justru menghilangkan satu risiko yang sudah teridentifikasi, bukan cuma soal selera.

**[REKOMENDASI]** Stack: **Astro** + Tailwind CSS, konten case study/artikel dalam MDX, di-deploy sebagai static site.

Alasan teknis (bukan dari benchmark riset — ini keputusan engineering langsung, karena riset benchmark tidak mendalami stack web yang dipakai portfolio lain):
- **Output default nol-JS** — Astro merender ke HTML statis by default, komponen interaktif (mis. visualizer arsitektur ala Sujit More kalau nanti mau dibuat) cukup jadi "island" tersendiri (boleh pakai React/Vue di dalamnya) tanpa membebani seluruh situs. Ini langsung menutup celah SEO/crawlability yang jadi masalah nyata di Flutter-web-only (anti-pattern #2).
- **MDX cocok untuk Engineering Notes & case study** — mendukung alur "dokumentasi dulu" yang memang jadi kebiasaan kamu di semua repo lain (Saldough, Linguini, dst.) — nulis Markdown, bukan berjuang dengan JSX/widget tree untuk sekadar menampilkan artikel.
- **Maintenance rendah untuk individual developer** — full static, tidak perlu server/backend, deploy ke Firebase Hosting (konfigurasi `.firebaserc`/`firebase.json` yang sudah ada di repo ini bisa dipakai lagi) atau Vercel/Netlify.
- Alternatif yang juga valid kalau kamu lebih familiar dengan React ecosystem secara umum: **Next.js** (static export) — trade-off-nya sedikit lebih berat dari sisi JS bundle default dibanding Astro, tapi ekosistemnya lebih besar. Disebut sebagai alternatif, bukan rekomendasi utama, karena prioritas situs ini (SEO + low maintenance + konten-berat) lebih pas dengan kekuatan utama Astro.

### Tambahan keputusan #2 — ✅ DIKONFIRMASI PEMILIK (13 Sep 2026): stack wajib mendukung blog/artikel dari awal

Pemilik menambahkan syarat: stack yang dipilih harus mendukung pembuatan blog/artikel di situs (bukan cuma 2-3 halaman statis yang ditempel manual). **Astro dari sananya memang dirancang untuk ini** — bukan tambahan yang perlu dicari-cari, jadi ini justru menguatkan pilihan Astro di atas, bukan mengubahnya:

- **Content Collections (`astro:content`)** — Engineering Notes/blog jadi koleksi artikel bertipe (`src/content/notes/*.mdx`), dengan skema frontmatter tervalidasi (Zod): `title`, `date`, `summary`, `tags`, `draft`. Nulis artikel baru = tambah 1 file `.mdx`, tidak perlu sentuh routing/komponen — cocok untuk ritme individual (tulis kapan sempat, bukan pipeline rumit).
- **Listing + halaman detail otomatis** — 1 halaman index yang men-generate daftar dari collection, 1 dynamic route (`[...slug].astro`) untuk halaman detail per artikel. Jadi "Engineering Notes" bisa mulai dari 2-3 artikel (§17 Phase 4) dan tumbuh jadi blog rutin (pola #3 di §3 — sinyal otoritas jangka panjang) kapan pun tanpa restrukturisasi.
- **Syntax highlighting bawaan (Shiki)** — penting karena artikel security/migrasi (§11, §19) akan menyertakan code snippet generik; tidak perlu setup library terpisah.
- **RSS feed** (`@astrojs/rss`, tinggal tambah 1 file) — sinyal "blog beneran", murah untuk ditambahkan, mendukung pola blog-rutin yang muncul di riset (avanderlee.com, vadimbulavin.com, §3 poin 3).
- **SEO per-artikel** (title/description/OG tag per halaman) — mendukung tahap "30 detik/2 menit" di funnel recruiter (§14) kalau artikel dibagikan langsung (mis. di LinkedIn) tanpa lewat homepage dulu.
- **Tags/kategori** dari frontmatter — memisahkan artikel "Engineering Notes" (deep-dive teknis) dari kemungkinan kategori lain di masa depan, tanpa perlu migrasi struktur data kalau nanti mau menambah jenis tulisan baru.

Baris IA di §7 untuk "Engineering Notes" diperbarui: dibangun sebagai **content collection sejak awal** (bukan halaman statis manual), meski isinya baru 2-3 artikel di awal — supaya kalau nanti mau jadi blog rutin, tidak perlu bongkar ulang arsitekturnya.

Repo `personal_portofolio` (Flutter) yang ada sekarang akan di-wipe total sesuai kesepakatan awal sesi ini, diganti struktur project Astro baru di Phase 1.

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
| **flutter-package-core** | **LULUS audit (13 Sep 2026) — aman dipakai sebagai Open Source** | [FAKTA — verified langsung] Isi packages (`exception`, `network`, `firestore`, `storage`, `security`) dan strukturnya (`packages/` flat) **berbeda** dari `advance-mobile-platform` (`core/`, `shared/`, `infrastructure/`, `fondation/`, nama `failures`/`models`/`state_management`/dst). Tidak ada satupun referensi ke perusahaan/employer di seluruh isi repo. **1 hal wajib dibereskan sebelum publish**: `apps/example/lib/examples/firestore_example.dart` meng-hardcode Firebase API key + `projectId: 'arkariz-flutter-example-app'` — key client Firebase memang boleh publik by design, tapi pastikan dulu Firestore security rules project itu sudah terkunci sebelum contoh ini publik |
| **flutter-dsl** | **GAGAL audit (13 Sep 2026) — JANGAN dipublikasikan sebagai bagian portfolio** | [FAKTA — verified langsung] Bukan cuma "mirip pola" — repo ini berisi link literal ke wiki internal perusahaan (`kb-fmf.atlassian.net/wiki/...` di banyak README komponen: `fl_bottom_sheet`, `fl_banner`, `fl_toast`, `fl_badge`, `fl_form`, `fl_chip`, `fl_tag`, `fl_radio`) dan referensi ke org GitHub privat perusahaan (`github.com/KB-FMF/flutter-dsl`, `github.com/KB-FMF/design-token-figma-dsl-mobile`). Ini adalah kebocoran konfidensial kalau dipublikasikan sebagai bagian portfolio. **Di luar konteks portfolio**: cek juga visibility repo `arkariz/flutter-dsl` ini sendiri di GitHub (publik/privat) — kalau publik, pertimbangkan untuk diamankan terlepas dari rencana portfolio |
| **advance-mobile-platform** | **Kode orisinal kamu, TAPI jangan publikasikan repo ini apa adanya — rebuild fresh (lihat §21)** | [FAKTA — verified via `git log`] Histori commit membuktikan kamu menulis packages ini (`failures`, `models`, `state_management`, `navigation`, `di`, dll) **sendiri, inkremental, dari nol**, bukan hasil copy-paste — commit pertama "add initial state management package with BLoC pattern implementation", berkembang fitur demi fitur ~1 minggu, semua atas nama kamu. TAPI `.gitlab-ci.yml` di repo ini eksplisit berisi `default: tags: [bci-runner]` — nama runner CI milik kantor (BCI) — dan README menaut ke Notion "Onboarding"/"Developer Reference" bergaya dokumentasi tim. Kode Dart-nya sendiri kemungkinan aman, tapi provenance CI/infra-nya menempel ke kantor. **Jangan publikasikan repo ini sebagaimana adanya** — lihat §21 untuk cara mengambil kematangannya dengan aman |
| **fullstack-autoledger** | **Skip dari flagship** | [FAKTA] Ini web full-stack (React+NestJS), bukan mobile — tidak sesuai positioning "Mobile Engineer". Bisa disebut 1 baris di About kalau mau, tapi tidak masuk Work |
| **new-health-duel** | **Jangan presentasikan sebagai "produk yang saya desain"** | [FAKTA, dari CLAUDE.md repo itu sendiri] Ini dibangun lewat alur agent (Analyzer/Planner/Coder AI) yang secara eksplisit mem-porting pola dari reference project (`fintrack_lite`) — bukan didesain dari nol oleh kamu. Kalau dipakai sama sekali, harus jujur diberi label "latihan arsitektur", bukan flagship. Mengklaim ini sebagai app yang "saya bangun" secara implisit akan melanggar constraint #1 (jangan mengarang) |
| **autoledger-companion-android** | **Skip** | [FAKTA] Scaffold generik dari AI Studio (template Gemini API), bukan produk yang didesain/dikembangkan sebagai portfolio piece |
| **flutter-architecture-studi-bank** | **JANGAN dipakai sama sekali sebagai source material — hanya boleh jadi inspirasi pola umum (§21)** | [FAKTA — verified via `git log`] 100% commit dari kamu sendiri, TAPI ini source code asli aplikasi mobile banking produksi milik klien (Capital Flex/BCI, bundle ID `com.overo.capital.mb.*`, tercatat di CLAUDE.md repo itu sendiri). Kematangan arsitekturnya (migrasi Strangler Fig, ADR, `IsolatedScope` DI) nyata dan berharga sebagai pengalaman — tapi kodenya adalah aset klien, bukan milikmu untuk dipublikasikan dalam bentuk apapun yang bisa ditelusuri baliknya |
| **flutter-architecture-studi** | **⚠️ JANGAN DISENTUH SAMA SEKALI — temuan serius di luar scope portfolio** | [FAKTA — verified via `git log`] Ini **mirror harfiah repo tim kantor**: histori commit berisi kontribusi asli dari 10 orang berbeda (Albert, Bayu Nugroho, Kai Koga, Kusuma Seta, Mitha L Arethusa, Muh. Aldi Andi Kitta, Nur Irfan Eka Fadhilah, Sulfa Nurohid, nur-wahid-azhar-KP, + kamu), dengan nomor JIRA/PR internal asli di pesan commit. Ini bukan sekadar risiko kerahasiaan portfolio — ini kode + nama rekan kerja asli yang ada di akun GitHub personal. **Di luar scope portfolio**: cek visibility repo ini (privat/publik) dan pertimbangkan apakah ini boleh tetap ada di akun personal sama sekali — ini keputusan kamu, mungkin perlu dicek ke kebijakan perusahaan, bukan sesuatu yang saya putuskan sepihak |

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
- Tasks:
  - ✅ **Selesai (13 Sep 2026)**: audit isi `flutter-package-core` dan `flutter-dsl` dibanding pola `advance-mobile-platform`/`flutter-architecture-studi-bank` — hasil di §10: `flutter-package-core` lulus (dengan 1 cleanup wajib: hapus/rotasi Firebase config contoh di `apps/example`), `flutter-dsl` gagal total (berisi link wiki internal & org GitHub privat perusahaan, exclude permanen dari portfolio).
  - ✅ **Dikonfirmasi pemilik (13 Sep 2026)**: positioning statement final (§6) — diterima apa adanya. Stack teknis situs (§7) — **bukan Flutter web**, pakai Astro + Tailwind + MDX.
  - ⏳ **Masih perlu keputusan kamu**: cara pembersihan Firebase example di `flutter-package-core` (hapus filenya vs ganti jadi placeholder+instruksi) — §10/§20; nama repo untuk 2 proyek baru wajib — §19/§20.
  - ⏳ **Rekomendasi tambahan (di luar scope portfolio)**: cek visibility repo `arkariz/flutter-dsl` di GitHub settings.
- Effort: 2-3 hari (audit & keputusan besar sudah selesai; sisanya 2 keputusan kecil, bukan riset lagi).
- Dependencies: tidak ada.
- Definition of done: daftar hijau/merah repo per §10 dikonfirmasi oleh kamu secara eksplisit — **tercapai**, tinggal 2 keputusan kecil di atas.

**Phase 1 — Portfolio Foundation**
- Objective: wipe repo Flutter lama (`personal_portofolio`), bangun skeleton situs Astro sesuai IA §7.
- Deliverables: Home, About, Resume, nav kosong untuk Work/Engineering Notes/Open Source — sebagai project Astro, bukan Flutter.
- Tasks: `npm create astro@latest`, setup Tailwind + MDX integration, deploy pipeline (Firebase Hosting sudah ada konfigurasi `.firebaserc`/`firebase.json` di repo — cukup diarahkan ke `dist/` hasil build Astro, tidak perlu setup baru dari nol), tulis positioning statement final (sudah fix, tinggal ditempel, §6) & bio naratif.
- Effort: 1 minggu.
- Dependencies: Phase 0 (stack & positioning — **sudah selesai**).
- Definition of done: situs live dengan Home + About + Resume, tanpa proyek dummy, dibangun di atas Astro bukan Flutter web.

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

> **Nama repo dikonfirmasi (13 Sep 2026): `flutter-native-migration-showcase`** — lihat §20 keputusan #4 dan §23.7.

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

---

## 20. Keputusan Terbuka (Decision Log)

Status keputusan yang diminta pemilik selama diskusi Phase 0, diperbarui tiap kali ada keputusan baru:

| # | Keputusan | Status | Detail |
|---|---|---|---|
| 1 | Positioning statement | ✅ **Dikonfirmasi** (13 Sep 2026) | §6 — dipakai apa adanya |
| 2 | Stack teknis situs | ✅ **Dikonfirmasi** (13 Sep 2026) | §7 — Astro + Tailwind + MDX, bukan Flutter web. Tambahan: wajib mendukung blog/artikel dari awal via Astro Content Collections (bukan halaman statis manual) |
| 3 | Cara pembersihan Firebase example di `flutter-package-core` | ✅ **Dikonfirmasi & dieksekusi** (13 Sep 2026) | Dipilih opsi (b): hardcoded API key/projectId di `firestore_example.dart` diganti `String.fromEnvironment(...)` + placeholder, instruksi `--dart-define` ditambahkan di doc comment & README `apps/example`. Sudah di-commit & push ke `flutter-package-core` (branch `claude/portofolio-project-setup-vv9a56`). **Masih perlu kamu lakukan sendiri**: cek Firebase Console → Firestore Rules untuk project `arkariz-flutter-example-app`, pastikan tidak permisif (`allow read, write: if true`) — ini kontrol keamanan yang sesungguhnya, bukan key-nya. Lihat §10 |
| 4 | Nama repo baru | ✅ **Dikonfirmasi** (13 Sep 2026) | **`flutter-native-migration-showcase`** — untuk item E (reference repo migrasi+gateway, §19/§22/§23.7). Pola penamaan: kebab-case + prefix `flutter-` (konsisten dengan `flutter-package-core`/`flutter-dsl`), pakai "showcase" (bukan "usecase" — istilah itu sudah dipakai untuk arti lain: varian komponen Widgetbook BCI/mobile-dsl). Item F sudah dikonsolidasi masuk `advance-mobile-platform` (§23.5), tidak perlu repo/nama terpisah |
| 5 | Batas "pakai repo di-exclude sebagai referensi" | ✅ **Dikonfirmasi** (13 Sep 2026) | §21.4 — `advance-mobile-platform`, `flutter-architecture-studi`, `flutter-architecture-studi-bank` boleh dipakai sebagai referensi pola PRIVAT untuk rebuild clean-room, TIDAK PERNAH dipublikasikan/ditautkan. Isu keberadaan `flutter-architecture-studi` (commit 10 rekan kerja) di GitHub personal tetap terbuka, terpisah dari keputusan ini |
| 6 | `advance-mobile-platform` sebagai repo utama (menggantikan `flutter-package-core`) | ✅ **Dikonfirmasi** (13 Sep 2026) | §23 — audit ulang mendalam mengonfirmasi risiko sempit (cuma 2 file: `.gitlab-ci.yml` + link Notion di README), jadi strategi jadi sanitasi in-place, bukan rebuild dari nol. `flutter-package-core` diturunkan perannya (§23.6): bagian bergunanya diadopsi, tidak lagi jadi showcase aktif |
| 7 | Histori git `advance-mobile-platform`: pertahankan vs fresh history | ⚠️ **DIBATALKAN & DIGANTI (14 Sep 2026)** — lihat §23.8 | Keputusan awal "pertahankan histori" (13 Sep) dibuat dari audit yang **tidak lengkap** — audit itu cuma men-sweep isi file di kondisi SAAT ITU, bukan isi historis tiap file. Ternyata histori mengandung domain GitLab internal asli (menyebut nama perusahaan sungguhan — detail sengaja tidak dikutip literal di dokumen ini, lihat catatan redaksi di §23.8) + email korporat asli, sejak commit kedua repo. Histori akhirnya **di-rewrite penuh** (§23.8), bukan dipertahankan |

---

## 21. Mengambil Kematangan Arsitektur dari Repo yang Di-exclude — Cara Aman

**Konteks**: pemilik menilai (dengan benar) bahwa `advance-mobile-platform` dan `flutter-architecture-studi-bank` menunjukkan kematangan arsitektur yang lebih tinggi dari apa yang sudah masuk rencana (Saldough, `envflare_cli`, `flutter-package-core`). Audit lanjutan di §10 mengonfirmasi kematangan itu nyata — tapi juga mengonfirmasi kenapa kedua repo itu sendiri tidak bisa dipakai langsung (satu tercampur infra kantor, satu lagi source code klien). Solusinya bukan "jangan tunjukkan kematangan ini", tapi **bangun ulang dari nol** dengan pola yang sama, kode yang berbeda.

Prinsip clean-room yang dipakai di seluruh §21: yang diambil hanya **konsep arsitektur generik** (nama pola, tanggung jawab tiap layer, keputusan trade-off) — bukan nama kelas, nama file, struktur folder persis, apalagi baris kode dari repo manapun yang disebut di §10 sebagai tidak aman. Kalau ragu apakah sesuatu "terlalu mirip", defaultnya adalah menulis ulang dengan pendekatan sendiri, bukan menerjemahkan 1:1.

### 21.1 [⚠️ SUPERSEDED oleh §23 — 13 Sep 2026] Mengganti peran `advance-mobile-platform` → perluas `flutter-package-core`

> Bagian ini dipertahankan sebagai jejak keputusan (bukan dihapus), konsisten dengan konvensi ADR yang dipakai di repo lain (ADR di-supersede, bukan diedit diam-diam). Keputusan di bawah ini **tidak lagi berlaku** — pemilik memutuskan sebaliknya di §23: `advance-mobile-platform` jadi repo utama, bukan `flutter-package-core`.

`flutter-package-core` sudah lulus audit (§10) dan sudah punya fondasi monorepo Melos yang benar (`packages/*`). Daripada memakai `advance-mobile-platform` (provenance-nya tercampur, §10) atau bikin repo baru lagi (nambah beban maintenance, melanggar constraint #8), **[REKOMENDASI — DIGANTIKAN §23]**: tambah package baru ke `flutter-package-core`, ditulis dari nol:

| Package baru | Tanggung jawab (pola generik, bukan tiruan) | Bukti maturity yang ditunjukkan |
|---|---|---|
| `state_management` | Wrapper/abstraction di atas BLoC atau state management pilihanmu — bukan reimplement BLoC, tapi lapisan konsisten di atasnya (mis. base class untuk effect handling, event-state contract) | Konsistensi arsitektur lintas-proyek — kriteria Monzo L4 ("code that serves as a definitive example") |
| `navigation` | Type-safe routing abstraction (generic route contract, bukan implementasi go_router/GoRouter yang di-fork) | Modularisasi — kriteria Monzo L4 ("large scale architectural changes... navigation") |
| `di` | Scoped dependency injection kecil di atas GetIt/get_it (bukan reimplementasi container DI dari nol) — fokus ke pola scoping (root vs feature-scoped), bukan nama API `IsolatedScope` dari repo manapun | Menunjukkan paham *kenapa* DI di-scope per-fitur, bukan cuma bisa pakai GetIt |

Karena `flutter-package-core` sudah bersih (lulus audit) dan histori commit sebelumnya (di `advance-mobile-platform`) sudah membuktikan kamu SANGGUP menulis level ini sendiri dalam hitungan hari, effort tambahan ini realistis: **estimasi 1-2 minggu paruh waktu** untuk ketiga package, ditambah `example/` app yang mendemonstrasikan ketiganya terpakai bersama (persis seperti `app_example` di `advance-mobile-platform`, tapi ditulis ulang).

### 21.2 Memperkaya Proyek Baru #1 (§19) dengan pola migrasi yang terbukti matang

Proyek Baru #1 di §19 (reference repo Strangler Fig) sudah dirancang generik. Setelah melihat kematangan nyata di `flutter-architecture-studi-bank`, berikut elemen **pola umum** (bukan kode spesifik repo itu) yang layak dimasukkan ke desainnya:

- **ADR sebagai bagian dari deliverable**, bukan cuma kode — tulis 2-3 "Architecture Decision Record" pendek (format umum: Context/Decision/Consequences) yang menjelaskan KENAPA boundary adapter diletakkan di titik tertentu, kenapa feature-flag dipilih ketimbang branch terpisah, dst. Ini konsep ADR yang generik (dipakai luas di industri), bukan template proprietary siapa pun.
- **DI yang di-scope per-fitur** (root DI vs feature-scoped DI, dengan lifecycle terpisah) — pola umum dependency injection, ditulis dengan nama dan implementasi sendiri (lihat catatan di §21.1 soal `di` package).
- **Satu titik silang eksplisit** antara "sisi lama" dan "sisi baru" (adapter/bridge tunggal, bukan panggilan ad-hoc tersebar) — ini prinsip Strangler Fig yang memang standar industri (Martin Fowler), bukan sesuatu yang eksklusif milik satu perusahaan.

Tidak ada perubahan pada estimasi effort Proyek Baru #1 di §19 (~3-4 minggu paruh waktu) — poin-poin di atas memperjelas SCOPE-nya, bukan menambah pekerjaan baru.

### 21.3 Ringkasan dampak ke roadmap

- `flutter-package-core` naik peran: dari "1 CLI + package pendukung" jadi **bukti modularisasi arsitektur setingkat `advance-mobile-platform`**, tapi 100% clean.
- Proyek Baru #1 (§19) tetap 1 repo baru, sekarang dengan referensi pola yang lebih jelas dan matang secara desain, bukan proyek terpisah tambahan.
- **Tidak ada proyek baru ke-3** yang perlu dibuat — perluasan `flutter-package-core` masuk ke repo yang sudah ada, sejalan dengan constraint #8 (jangan bikin portfolio terlalu besar untuk dipelihara).
- `advance-mobile-platform`, `flutter-architecture-studi`, dan `flutter-architecture-studi-bank` tetap **tidak pernah dipublikasikan atau ditautkan** dari portfolio dalam bentuk apapun — perannya selesai sebagai referensi privat untuk desain ulang, sesuai §10.

### 21.4 Klarifikasi batas "dipakai sebagai referensi" — ✅ DIKONFIRMASI PEMILIK (13 Sep 2026)

Pemilik mengonfirmasi: ketiga repo (`advance-mobile-platform`, `flutter-architecture-studi`, `flutter-architecture-studi-bank`) **boleh dipakai sebagai referensi pola secara privat** untuk mendesain ulang, dengan syarat hasilnya adalah **versi tulisan ulang milik sendiri** — bukan kode/nama/struktur yang disalin. Ini konsisten dengan prinsip clean-room di §21 pembuka, sekarang berlaku eksplisit untuk ketiganya, termasuk konsep "gateway" di `flutter-architecture-studi` (native shell yang menjembatani ke banyak modul Flutter terpisah — pola umum, bukan implementasi spesifiknya).

**Catatan yang tetap berlaku, tidak berubah oleh keputusan ini**: temuan di §10 soal `flutter-architecture-studi` — repo ini berisi commit asli 10 rekan kerja + nomor JIRA/PR internal — adalah **isu keberadaan repo itu sendiri di GitHub personal**, terpisah dari pertanyaan "boleh dipakai sebagai referensi desain atau tidak". Menggunakan polanya secara privat untuk proyek sendiri (hal yang wajar dilakukan banyak engineer) tidak menghapus perlunya kamu mengecek visibility repo tersebut dan mempertimbangkan kebijakan perusahaan soal kode + commit rekan kerja yang ada di akun personal.

## 22. [⚠️ Item A-D dan F DIGANTIKAN §23 — 13 Sep 2026] Build Plan Konsolidasi — Apa Saja yang Perlu Dibangun

> Tabel di bawah ini jejak keputusan sebelumnya. Item **E tetap berlaku**. Item **A-D dan F digantikan** oleh §23 (strategi baru: `advance-mobile-platform` jadi repo utama, bukan bangun ulang dari nol di `flutter-package-core`).

Ini jawaban (versi awal, sudah direvisi) untuk "apa saja yang perlu kita buat", menggabungkan §19 dan §21 jadi satu daftar kerja:

| # | Item | Target repo | Terinspirasi pola dari (privat, tidak dikutip langsung) | Scope singkat | Effort |
|---|---|---|---|---|---|
| A | Package `state_management` | `flutter-package-core` (existing) | `advance-mobile-platform/fondation/state_management` | Lapisan konsisten di atas BLoC — base class effect handling, event-state contract | 3-4 hari |
| B | Package `navigation` | `flutter-package-core` (existing) | `advance-mobile-platform/fondation/navigation` | Type-safe routing abstraction generik | 2-3 hari |
| C | Package `di` | `flutter-package-core` (existing) | `advance-mobile-platform/shared/di` | Scoped DI di atas GetIt — root-scope vs feature-scope | 3-4 hari |
| D | Update `apps/example` | `flutter-package-core` (existing) | `advance-mobile-platform/app_example` | Demo A+B+C+package existing (exception/network/firestore/security) terpakai bersama dalam 1 app kecil | 2-3 hari |
| E | Reference repo migrasi + gateway (**Proyek Baru #1**, §19) | Repo baru (nama: keputusan #4) | `flutter-architecture-studi-bank` (Strangler Fig, ADR, boundary adapter, DI ter-scope per-fitur) + `flutter-architecture-studi` (konsep gateway: 1 native shell → banyak modul Flutter independen) | Native shell/gateway → 2 modul Flutter contoh dijembatani via MethodChannel, 1 di antaranya mendemonstrasikan pola "legacy+v2 coexist" ala Strangler Fig dengan feature-flag, adapter sesi eksplisit, DI di-scope per-modul (pakai package D di atas), + 2-3 ADR pendek sebagai dokumentasi | ~3-4 minggu (sesuai §19, scope diperjelas bukan ditambah) |
| F | Package app-integrity/security-policy (**Proyek Baru #2**, §19) | Repo baru (nama: keputusan #4) | Tidak ada repo referensi spesifik — dari pengalaman security kamu sendiri (SSL pinning, secure storage, root/jailbreak detection) | Sesuai §19 — tidak berubah | ~2.5-3 minggu (sesuai §19) |

**Total pekerjaan baru**: A-D (~2 minggu paruh waktu, masuk repo existing) + E-F (~6-7 minggu paruh waktu, 2 repo baru) = **~8-9 minggu paruh waktu** di luar Saldough. Kalau perlu dipangkas, urutan prioritas tetap: **E (Proyek Baru #1) paling penting** karena langsung mem-back-up diferensiator utama (§18) sekaligus sekarang menyerap 2 pola sumber (bank + gateway) jadi 1 artifact; A-D (paket `flutter-package-core`) prioritas kedua karena memperkuat cerita "Open Source" dengan kematangan setingkat platform kerja; F paling bisa ditunda jadi stretch goal.

Item A-D **tidak butuh nama repo baru** (masuk `flutter-package-core` yang sudah ada) — jadi dari 2 keputusan terbuka di §20, **keputusan #4 (nama repo) sekarang hanya relevan untuk E dan F**, bukan bertambah jadi 4 repo.

---

## 23. Revisi Strategi — ✅ DIKONFIRMASI PEMILIK (13 Sep 2026): `advance-mobile-platform` sebagai Repo Utama

**Keputusan pemilik**: `flutter-package-core` dinilai sudah agak ketinggalan jaman. `advance-mobile-platform` dipakai sebagai repo utama, dengan bagian-bagian yang masih berguna dari `flutter-package-core` diadopsi masuk. Ini mengubah §21.1 dan sebagian §22 (item A-D, F) — bagian lama tetap disimpan sebagai jejak keputusan (ditandai superseded), bukan dihapus.

### 23.1 Audit ulang mendalam — apakah aman dijadikan repo utama?

Sebelum menyetujui pergeseran strategi ini, saya jalankan sweep penuh ke **seluruh isi repo** `advance-mobile-platform` (bukan cuma sampling seperti audit pertama di §10) — cek semua `pubspec.yaml` (git dependency URL), semua `README.md` per package, `CHANGELOG.md`, isi lengkap `.gitlab/ci/*.yml`, dan commit dari `CI Bot`.

**Hasil: hanya ada 2 titik referensi ke perusahaan di SELURUH repo** (13 package, puluhan file):
1. `.gitlab-ci.yml` (root) — 1 baris: `tags: [bci-runner]`.
2. `README.md` (root) — 3 link Notion (`Mobile Platform`, `Architecture`, `Onboarding`, `Developer Reference`).

Tidak ada nama perusahaan lain (`Capital Flex`, `BCI` penuh, `KB-FMF`, dll — nol hit di luar 2 titik itu), tidak ada URL GitLab privat di pubspec manapun, tidak ada token/secret (yang ada di CI file cuma NAMA variabel seperti `CI_VERSIONING_BOT_TOKEN`, bukan isinya), dan semua contoh kode di README package (`api_network`, `dio_network`, `hive_storage`) pakai `api.example.com` generik. Commit dari `CI Bot` isinya cuma otomasi versioning package, tidak ada info sensitif.

**[REKOMENDASI — kesimpulan]**: Ini beda kategori dari `flutter-dsl`/`flutter-architecture-studi(-bank)` di §10 — di sana leaknya struktural dan tersebar (banyak file, nama org berulang, bahkan commit orang lain). Di sini leaknya **sempit dan dangkal**: 2 file, 4 baris total, nol secret. Karena itu, strategi yang tepat bukan lagi "clean-room rebuild dari nol" (mahal, ~2 minggu seperti rencana lama di §21.1), tapi **sanitasi in-place** (jauh lebih murah).

### 23.2 Rencana sanitasi

1. Hapus `.gitlab-ci.yml` dan seluruh folder `.gitlab/ci/`. Bukan cuma soal kerahasiaan — GitLab CI memang tidak relevan lagi kalau host utamanya jadi GitHub. Ganti dengan GitHub Actions minimal (`flutter analyze` + `flutter test` per package via Melos).
2. Hapus 3 link Notion di README, ganti jadi dokumentasi arsitektur yang ditulis langsung di repo ini (README/docs asli) — ini sekaligus upgrade nyata, karena link Notion privat toh tidak bisa dibuka siapa pun di luar perusahaan.

Effort: **1-2 hari**.

### 23.3 Keputusan terbuka baru: bagaimana dengan histori git?

Sanitasi di atas menghapus filenya *ke depan*, tapi 50 commit lama tetap menyimpan `.gitlab-ci.yml` versi awal (dengan `bci-runner`) di histori kalau di-`git log -p`. Ini bukan kebocoran berat (cuma nama tag runner, bukan secret), tapi tetap perlu kamu putuskan sadar, karena ini publik dan sulit ditarik ulang setelah dibagikan ke recruiter:

- **Opsi 1 — [REKOMENDASI] Pertahankan histori, tambah commit sanitasi di atasnya.** Risiko sisa: rendah (siapa pun yang cek `git log -p` bisa lihat kata "bci-runner" pernah ada — cuma nama, bukan secret/logic). Keuntungan: histori 50 commit asli ("built this incrementally over a week") **jadi bukti proses kerja nyata** — relevan untuk funnel EM (§15) soal "bagaimana cara kerja kamu", nilai portfolio yang hilang kalau di-squash.
- **Opsi 2 — Fresh history (orphan commit / `git filter-repo`).** Menghilangkan jejak sepenuhnya, tapi histori commit yang otentik (nilai portfolio) ikut hilang, dan effort tambahan untuk rewrite history dengan benar.

Saya condong ke **Opsi 1** karena residual risk-nya rendah dan histori commit itu sendiri adalah aset portfolio (pola Chris Banes/Jake Wharton di §3 — proses kerja yang bisa diverifikasi). Tapi ini keputusanmu — dicatat sebagai item terbuka baru di §20.

### 23.4 Adopsi dari `flutter-package-core`

Analisis overlap dulu — package mana yang genuinely baru vs sekadar duplikat yang lebih lemah:

| Package `flutter-package-core` | Ada padanan di `advance-mobile-platform`? | Keputusan |
|---|---|---|
| `network` | Ya — `api_network`/`dio_network` (lebih matang, sudah dipisah per-layer) | **Tidak diadopsi** — redundan dan lebih lemah |
| `storage` | Ya — `memory_storage`/`api_storage`/`hive_storage` (lebih granular) | **Tidak diadopsi** — redundan dan lebih lemah |
| `exception` | Tidak — ini Firebase Auth/Firestore exception mapping (24+ tipe exception dari kode error Firebase), beda konsern dari `failures` (sealed Failure hierarchy generik) | **Diadopsi** — melengkapi, bukan duplikat |
| `firestore` | Tidak — `advance-mobile-platform` fokus REST/Dio, belum ada lapisan Firestore-specific (query builder, pagination, `watchCollection`) | **Diadopsi** — memperluas cakupan ke app berbasis Firebase |
| `security` | Tidak — AES encryption, HMAC hash belum ada di `advance-mobile-platform` | **Diadopsi** — juga relevan langsung untuk §23.5 di bawah |

**Cara adopsi**: di-PORT (ditulis ulang mengikuti convention zona `advance-mobile-platform`: `core/`, `shared/`, `infrastructure/`, `fondation/`), bukan copy folder mentah — supaya konsisten dan tetap terasa "satu platform", bukan tempelan. Penempatan yang disarankan: `security` → `core/security` (sejajar `core/failures`/`core/models`); `firestore` → `infrastructure/storage/firestore_storage` (sejajar `hive_storage`); `exception` → `core/exceptions` (package baru, melengkapi `core/failures`, bukan menggantikannya).

Effort: **3-5 hari** (porting kode yang sudah bekerja, bukan menulis dari nol — lebih cepat dari estimasi rebuild sebelumnya).

### 23.5 Dampak ke item F (Proyek Baru #2 — package app-integrity)

Karena `security` sekarang jadi bagian `advance-mobile-platform`, **[REKOMENDASI]** konsolidasikan: `IntegrityReport`/`SecurityPosture` (root/jailbreak detection + policy layer dari §19) dibangun sebagai **package baru DI DALAM `advance-mobile-platform`** (mis. `infrastructure/security/app_integrity`), bukan repo terpisah lagi. Scope teknisnya sama persis seperti di §19 (native check via MethodChannel + lapisan keputusan, bukan reimplementasi plugin yang sudah ada) — cuma pindah rumah.

Dampaknya: **jumlah repo baru yang perlu dibuat turun dari 2 (item E+F) jadi hanya 1 (item E)** — lebih sejalan dengan constraint #8 (jangan bikin portfolio terlalu besar untuk dipelihara), dan sekaligus memperkuat cerita `advance-mobile-platform` sebagai satu platform yang koheren, bukan koleksi package tersebar.

### 23.6 Peran baru `flutter-package-core`

**[REKOMENDASI]** setelah bagian yang berguna diadopsi (§23.4), `flutter-package-core` **tidak lagi jadi bagian showcase aktif** di situs portfolio — 2 "platform package" yang tumpang tindih di depan recruiter justru terlihat kurang kurasi (anti-pattern breadth, §4). Boleh tetap ada di GitHub (sudah lulus audit, tidak masalah secara kerahasiaan) tapi tidak ditautkan dari Open Source di situs. **Firebase example hardcoded (keputusan #3, §20) tetap perlu dibereskan** terlepas dari keputusan ini — repo itu tetap publik ada di akun GitHub kamu, terlihat atau tidak dari portfolio.

### 23.7 Build Plan — revisi final (menggantikan item A-D, F di §22)

| Item | Repo | Deskripsi | Effort |
|---|---|---|---|
| A′ | `advance-mobile-platform` | ✅ **Selesai (13 Sep 2026)** — Sanitasi: hapus `.gitlab-ci.yml`+`.gitlab/`, ganti GitHub Actions; hapus link Notion, ganti docs asli. PR: [arkariz/advance-mobile-platform#2](https://github.com/arkariz/advance-mobile-platform/pull/2) | 1-2 hari |
| B′ | `advance-mobile-platform` | Port `exception`, `firestore`, `security` dari `flutter-package-core` ke struktur zona yang sesuai | 3-5 hari |
| C′ | `advance-mobile-platform` | Package baru `app_integrity` (eks-item F) — native root/jailbreak detection + policy layer | ~2.5-3 minggu (sama seperti F sebelumnya, cuma pindah rumah) |
| E (tidak berubah) | Repo baru: **`flutter-native-migration-showcase`** ✅ (13 Sep 2026) | Reference repo migrasi + gateway (§19, §21.2) | ~3-4 minggu |

**Total waktu turun** dari estimasi sebelumnya (~8-9 minggu) jadi **~6-8 minggu paruh waktu**, karena tidak perlu lagi membangun `state_management`/`navigation`/`di` dari nol — itu sudah ada dan tinggal disanitasi.

### 23.8 Insiden: audit §23.1 tidak lengkap — domain perusahaan asli ada di histori git, sudah diremediasi (14 Sep 2026)

> **Catatan redaksi**: dokumen ini sendiri ada di repo public (`arkariz-portofolio`). String domain/nama perusahaan asli yang jadi temuan di bawah **sengaja tidak dikutip literal** di sini — itu akan mempublikasikan ulang persis apa yang sedang diremediasi. Detail literal (kalau perlu dirujuk lagi) ada di commit message hasil `git filter-repo` yang dijalankan pemilik secara lokal, bukan di dokumen publik ini.

**Apa yang terjadi**: audit §23.1 (13 Sep) menyimpulkan risiko `advance-mobile-platform` "sempit" berdasarkan sweep isi file *saat itu* — metodologi ini salah untuk kasus git: file yang sudah diperbaiki di commit terbaru bisa saja masih menyimpan isi lama di commit-commit sebelumnya. Saat mulai eksekusi item B′ (14 Sep), ditemukan 2 commit baru di `main` (dibuat sesi Claude Code lain, tanggal 10 September) yang memperbaiki URL git dependency di semua `pubspec.yaml` — sebelumnya mengarah ke sebuah URL SSH GitLab internal yang menyebut nama perusahaan tempat pemilik bekerja secara harfiah di domainnya (bukan sekadar tag generik seperti `bci-runner` yang ditemukan di audit §23.1).

Verifikasi penuh terhadap histori (bukan cuma file saat ini):

- Domain tersebut muncul **195 kali** di histori git, sejak **commit kedua** repo (bukan cuma di file CI).
- Email commit korporat asli (domain perusahaan yang sama) dipakai sebagai author/committer di ~40 commit.
- Repo ini **berstatus PUBLIC** di GitHub sejak dibuat (17 Juli 2026) — jadi ini eksposur publik yang sudah berlangsung, bukan risiko hipotetis.

**Remediasi yang dilakukan**: histori di-rewrite penuh pakai `git filter-repo` (bukan cuma sanitasi commit baru di atas seperti rencana §23.2/§23.3 semula):
1. `--replace-text` untuk mengganti URL GitLab → URL GitHub publik, domain perusahaan → placeholder generik, dan `bci-runner` → `self-hosted`, di SELURUH blob histori (bukan cuma file terkini).
2. `--mailmap` untuk mengalihkan email commit dari email korporat ke email noreply GitHub standar (`44420394+arkariz@users.noreply.github.com`) — sengaja bukan email pribadi, supaya tidak menambah eksposur baru.
3. Force-push ke `main` — berhasil di percobaan pertama.
4. Force-push ke seluruh **49 tag** (dipakai sebagai pin versi oleh Saldough & konsumen lain) — sempat gagal berulang kali (HTTP 403) baik dari sesi ini maupun dari mesin pemilik; akar masalahnya ternyata **`pip install git-filter-repo` gagal duluan** di macOS pemilik (Python externally-managed, PEP 668) sehingga seluruh script berhenti sebelum sampai ke langkah push — bukan soal tag protection rule seperti dugaan awal. Setelah pakai `brew install git-filter-repo`, proses berhasil.
5. **Diverifikasi 2x secara independen** (fresh clone dari GitHub, bukan percaya laporan begitu saja) — 0 residu di seluruh branch + 49 tag, email commit sudah bersih.

**Tindak lanjut yang masih perlu dilakukan pemilik**: jalankan `flutter pub upgrade` di **Saldough** (dan proyek lain yang mengonsumsi package dari `advance-mobile-platform` sebagai git dependency) — hash commit di balik setiap tag versi sudah berubah karena rewrite ini, jadi `pubspec.lock` lama menyimpan SHA yang sudah tidak lagi ditunjuk oleh tag manapun.

**Pelajaran untuk audit berikutnya**: kalau ingin menilai keamanan sebuah repo git untuk dipublikasikan, **selalu cek isi historis tiap file** (`git log -p` atau `git log -S "<pola>" --all`), bukan cuma isi file di kondisi terkini — terutama untuk repo yang sudah lama berjalan sebelum dipertimbangkan untuk portfolio.

---

## 24. Daftar Final Repo Portfolio — Semua Keputusan Sudah Terkonfirmasi (13 Sep 2026)

Dengan keputusan #1-#7 (§20) semuanya selesai, ini daftar tunggal yang jadi rujukan final:

| Repo | Peran di portfolio | Status |
|---|---|---|
| **`arkariz-portofolio`** | Situs portfolio itu sendiri (Astro + Tailwind + MDX, §7) | Di-wipe & dibangun ulang, Phase 1 |
| **`Saldough`** | Flagship #1 — produk nyata, case study product engineering | Sedang berjalan, Phase 2 |
| **`advance-mobile-platform`** | Open Source utama — platform toolkit (state management, navigation, DI, network, storage, models, failures + `exception`/`firestore`/`security` yang diadopsi dari `flutter-package-core` + package baru `app_integrity`) | Sanitasi + porting, §23 |
| **`flutter-native-migration-showcase`** (baru) | Flagship #2 — reference repo migrasi native→Flutter + gateway, membuktikan case study migrasi bisa diverifikasi | Belum dibuat, §19/§21.2/§23.7 |
| **`envflare_cli`** | Open Source pendukung — CLI tooling nyata | Poles README+demo, Phase 4 |
| `memeapp` | **Bukan repo showcase** — cuma sumber 1-2 kalimat proof point kuantitatif di About/Resume (§24.1), tidak ditautkan/ditampilkan sebagai project | Tidak ada tindakan lebih lanjut ke repo-nya |

**Tidak masuk portfolio** (dengan alasan masing-masing, semua sudah diaudit langsung — lihat §10):

| Repo | Kenapa tidak masuk |
|---|---|
| `flutter-package-core` | Bagian bergunanya sudah diadopsi ke `advance-mobile-platform` (§23.4/§23.6); tetap ada di GitHub tapi tidak ditautkan dari situs, supaya tidak ada 2 "platform package" tumpang tindih |
| `flutter-dsl` | Gagal audit — berisi link literal ke wiki internal & org GitHub privat perusahaan |
| `flutter-architecture-studi` | Mirror repo tim kantor dengan commit asli 10 orang + JIRA/PR internal — hanya boleh jadi referensi pola privat (§21.4), isu keberadaannya di GitHub personal tetap terbuka di luar scope portfolio |
| `flutter-architecture-studi-bank` | Source code asli aplikasi banking klien — hanya boleh jadi referensi pola privat (§21.4) |
| `fullstack-autoledger` | Web full-stack (React+NestJS), bukan mobile — di luar positioning |
| `new-health-duel` | Dibangun via AI-agent porting dari reference project, bukan didesain dari nol — tidak jujur diklaim sebagai "produk yang saya bangun" |
| `autoledger-companion-android` | Scaffold generik AI Studio, bukan produk yang dikembangkan sungguhan |

### 24.1 `memeapp` — ✅ diaudit (13 Sep 2026), dipakai sebagai proof point saja

Audit penuh (git log, struktur kode, sweep kerahasiaan) terhadap `memeapp` ("Grudge" — usage limiter Android dengan mekanik "roast", package `com.arkarizdev.bonked`):

- **Kerahasiaan: bersih total** — package name sepenuhnya personal, signing key dikelola benar (`key.properties` di-gitignore, tidak ada `.jks` ter-commit), API key Giphy/PostHog lewat `BuildConfig` (build-time injection, bukan hardcode).
- **Kematangan jauh di atas dugaan awal**: ~5.593 baris Kotlin native + 1.311 baris test Kotlin (9 file test cocok 1:1 dengan komponen utama: watchdog service, overlay controller, state machine, gateway pattern) + ~3.089 baris Dart. Pakai **Pigeon** (tool resmi Google untuk typed platform channel, lebih rigorous dari raw `MethodChannel`). Ada keputusan compliance yang halus (sengaja hindari `QUERY_ALL_PACKAGES` demi Play Console declaration) dan trade-off reasoning tertulis eksplisit di tech plan ("two languages in one repo... low-regret and reversible until Phase 2").
- **Tegangan dengan positioning**: app ini di luar domain fintech — kalau dijadikan flagship/case study penuh, melanggar prinsip "satu tesis konsisten" (§3 pola Chris Banes) dan berisiko breadth-over-curation (§4).

**Keputusan pemilik (13 Sep 2026)**: dipakai sebagai **proof point singkat saja** — 1-2 kalimat kuantitatif di About/Resume (native Android depth, tested, Pigeon bridge), **bukan** flagship, **bukan** case study terpisah, **bukan** Engineering Note. Pola ini meniru cara Chris Banes mencantumkan app konsumer di luar tesis utamanya ("UI craft") sebagai 1 baris resume kuantitatif ("top 100 Google Play, 6.5M installs, diakuisisi") — bukan dihilangkan, bukan juga dijadikan flagship.

Draft kalimat proof point (bahan untuk Phase 1, §7 About/Resume): *"Membangun aplikasi Android native+Flutter solo dari nol (watchdog service, typed Pigeon bridge, overlay controller) — ~6.900 baris Kotlin+Dart dengan cakupan unit test penuh di komponen native-nya."* — Angka disesuaikan lagi saat penulisan final, jangan dikutip mentah tanpa verifikasi ulang saat itu.

### 24.2 `linguini` — belum dievaluasi

Belum diaudit di sesi ini. Per CLAUDE.md repo itu sendiri: aplikasi personal-use untuk 1 keluarga spesifik ("n=1 evidence base... explicitly not a market product yet") — kemungkinan besar tidak cocok jadi flagship karena memang didesain bukan untuk audiens umum. Bisa diaudit kalau kamu mau, tapi tidak mendesak berdasarkan deskripsi repo itu sendiri.
