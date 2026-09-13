# Portfolio Research & Planning Brief

**Disimpan:** 13 September 2026
**Status:** Belum dikerjakan — ini adalah brief riset, bukan hasil riset. Repository ini akan di-wipe total dan dibangun ulang dari nol saat implementasi dimulai (lihat catatan di bawah).

## Catatan konteks

- Repository `arkariz-portofolio` saat ini masih berisi skeleton Flutter lama (`personal_portofolio`). Pemilik sudah menyatakan: saat mulai implementasi, seluruh isi repo ini akan di-wipe dan dimulai dari awal. Jangan menganggap kode/struktur yang ada sekarang sebagai fondasi yang harus dipertahankan.
- Brief di bawah ini disimpan **verbatim** dari permintaan pemilik agar tidak hilang saat sesi/container berakhir. Belum ada riset yang dilakukan terhadap brief ini — ini adalah daftar tugas riset yang menunggu untuk dieksekusi saat pemilik siap memulai.
- Saat mengerjakan brief ini nanti: jangan mengarang fakta, benchmark, atau metric. Semua klaim harus bersumber dari sumber asli (lihat "Critical Constraints" di brief).

---

## Brief asli dari pemilik (verbatim)

### Deep Research & Planning: Professional Mobile Developer Portfolio

**Context**

Saya ingin membangun portfolio profesional sebagai Senior/Staff-level Mobile Engineer, dengan fokus utama pada Flutter/mobile engineering, bukan sekadar portfolio UI atau kumpulan aplikasi demo.

Tujuan utama portfolio ini adalah:

1. Meningkatkan positioning saya sebagai Senior/Staff Mobile Engineer.
2. Membuat recruiter dan engineering manager dapat memahami kemampuan saya tanpa harus meng-clone/install setiap project.
3. Menunjukkan bahwa saya mampu mengerjakan mobile product secara end-to-end: product understanding, architecture, implementation, business logic, native integration, testing, performance, security, CI/CD, release, maintenance.
4. Menunjukkan engineering depth melalui case studies dan technical evidence.
5. Memiliki beberapa flagship projects yang kuat daripada banyak project kecil yang dangkal.
6. Portfolio harus realistis untuk dikerjakan oleh individual developer dengan waktu dan resource terbatas.

**My Background**

Gunakan informasi berikut sebagai baseline saat menganalisis kebutuhan portfolio saya.

- Mobile Developer dengan sekitar 5 tahun pengalaman di fintech/banking.
- Flutter sudah menjadi salah satu core skill utama saya selama beberapa tahun.
- Pernah mengerjakan aplikasi financial/fintech production.
- Berpengalaman dengan Flutter, Dart, BLoC/GetX/Riverpod, Clean Architecture, MVVM, dependency injection, REST API, Firebase, Crashlytics, CI/CD, platform channels, Android/iOS native integration.
- Pernah mengerjakan incremental migration dari native Android/iOS menuju Flutter pada aplikasi finance berskala besar tanpa melakukan rewrite total.
- Memiliki pengalaman dengan: Flutter modularization, feature-first architecture, native Android/iOS integration, MethodChannel, liveness/native SDK, secure storage, SSL pinning, performance optimization, CI/CD, release process, production debugging.
- Saat ini bekerja sebagai Staff Software Engineer di banking.
- Saya ingin portfolio yang mencerminkan kemampuan Senior/Staff Mobile Engineer, bukan Junior/Mid-level Flutter Developer.

Jangan mengarang pengalaman, achievement, metric, user count, atau impact yang tidak diberikan.

**Research Requirement**

Lakukan deep research menggunakan sumber asli. Jangan hanya mengandalkan artikel SEO, blog agregator, atau artikel yang menyimpulkan "best portfolio practices".

Prioritaskan primary/first-party sources: portfolio pribadi mobile engineers, GitHub repository milik mobile engineers, personal website, App Store/Google Play listing, engineering blog milik engineer/perusahaan, conference talk, resume/CV yang dipublikasikan oleh engineer, LinkedIn (hanya jika diperlukan untuk melengkapi konteks), official documentation untuk teknologi yang relevan.

Jika menemukan portfolio engineer profesional, buka portfolio tersebut dan analisis struktur sebenarnya. Jangan membuat seolah-olah suatu portfolio menggunakan metode tertentu jika website/repository aslinya tidak menunjukkan hal tersebut.

**Benchmark Research**

Cari minimal 10 portfolio mobile engineer profesional. Prioritaskan: Senior Mobile Engineer, Staff Mobile Engineer, Lead Mobile Engineer, Principal Mobile Engineer, Mobile Engineer dengan production apps, Flutter Engineer yang berpengalaman, iOS/Android engineer dengan portfolio engineering yang kuat.

Untuk setiap benchmark, catat:
1. URL
2. Nama engineer
3. Seniority jika tersedia
4. Role
5. Technology
6. Jenis project
7. Cara project dipresentasikan
8. Apakah ada: live app, App Store, Google Play, screenshots, video demo, interactive demo, GitHub, architecture diagram, technical case study, engineering metrics, performance benchmark, technical article, open-source package
9. Struktur portfolio
10. Apa yang membuat portfolio tersebut kuat
11. Apa yang kurang
12. Apa yang relevan untuk portfolio saya

Jangan hanya mengumpulkan daftar URL. Analisis pola yang benar-benar muncul dari portfolio tersebut.

**Important Research Question**

Saya sebelumnya menyadari bahwa portfolio mobile berbeda dengan portfolio web developer.

Web developer: `portfolio.com → live website → recruiter langsung mencoba`

Mobile developer memiliki friction: `portfolio → App Store/Google Play → install → login/setup → baru bisa melihat aplikasi`

Teliti bagaimana mobile engineer profesional mengatasi masalah presentation/discovery tersebut. Cari evidence apakah mereka menggunakan: product case study, screenshots, screen recording, demo video, interactive web demo, App Store/Google Play, architecture diagram, technical article, GitHub, open-source package, benchmarks, production metrics.

Kemudian tentukan presentation model terbaik untuk saya berdasarkan evidence tersebut.

**Portfolio Strategy**

Setelah research, jangan langsung menyarankan banyak aplikasi. Tentukan terlebih dahulu:

*A. Positioning* — Bagaimana portfolio saya seharusnya memposisikan saya? Contoh: "Flutter Developer" vs "Senior Mobile Engineer specializing in Flutter and cross-platform architecture" vs "Mobile Engineer focused on financial applications, architecture, native integration and mobile platform engineering". Tentukan berdasarkan background saya dan target career positioning.

*B. Portfolio Architecture* — Rancang struktur portfolio website saya, misalnya:
```
Home
├── About
├── Selected Work
├── Engineering
│   ├── Architecture
│   ├── Performance
│   ├── Native Integration
│   └── Security
├── Open Source
├── Writing
└── Resume
```
Tetapi jangan menganggap struktur tersebut benar. Validasi dengan hasil research.

**Project Strategy**

Tentukan jumlah flagship projects yang optimal. Jangan otomatis menyarankan 5–10 aplikasi. Bandingkan:
- Option A: 1 large production-like product
- Option B: 2–3 flagship projects
- Option C: 4–5 smaller but specialized projects

Tentukan mana yang paling efektif, dengan kriteria: recruiter impact, engineering depth, credibility, time required, maintenance cost, demonstration value, differentiation, relevance terhadap Senior/Staff Mobile Engineer. Berikan rekomendasi final.

**Project Categories**

Evaluasi apakah portfolio saya sebaiknya mencakup beberapa kategori berikut:

1. **Product Engineering** — contoh: finance/budgeting/subscription application. Membuktikan: product thinking, UX, architecture, business logic, API, persistence, analytics, release.
2. **Complex Domain / Business Logic** — contoh: payment engine, installment calculation, money handling, transaction processing, synchronization. Membuktikan: domain modelling, correctness, edge-case handling, testing.
3. **Mobile Platform / Native Integration** — contoh: Flutter → MethodChannel → Kotlin/Swift. Membuktikan: native Android, native iOS, platform APIs, SDK integration.
4. **Performance** — contoh: Flutter rendering, large lists, memory, image processing, isolate, rebuild optimization, DevTools profiling.
5. **Offline-first / Distributed Data** — contoh: Local DB → Sync Queue → API → Conflict Resolution. Membuktikan: reliability, synchronization, data consistency.
6. **Security** — contoh: secure storage, biometric, certificate pinning, root/jailbreak detection, obfuscation, secure networking.

Tentukan mana yang benar-benar perlu dibuat dan mana yang cukup dipresentasikan melalui case study.

**Existing Work Reuse**

Analisis apakah pengalaman/project berikut dapat dijadikan portfolio:
- Flutter/native incremental migration project.
- Financial application experience.
- Flutter architecture/refactoring work.
- Native Android/iOS integration.
- Flutter plugins/packages.
- `envflare_cli`.
- `new-health-duel`.
- `fullstack-autoledger`.
- Personal finance application yang sedang direncanakan (Saldough).

Jangan mengklaim bahwa project internal perusahaan boleh dipublikasikan. Untuk pekerjaan perusahaan, cari cara yang aman untuk mempresentasikan: architecture lessons, anonymized technical problems, migration strategy, engineering decisions, generalized technical case studies — tanpa membocorkan confidential information.

**Case Study Template**

Berdasarkan hasil research, tentukan template case study terbaik. Bandingkan apakah struktur berikut efektif (jangan diterima begitu saja, validasi berdasarkan portfolio nyata):

`Problem → Context → Role → Constraints → Approach → Architecture → Technical Decisions → Trade-offs → Implementation → Challenges → Testing → Performance → Outcome → Lessons Learned → Source/Demo`

**Presentation Strategy**

Untuk setiap flagship project, tentukan kombinasi presentation berikut, mana yang wajib/recommended/optional/unnecessary:

`Hero/Overview, Screenshots, Short Demo Video, Interactive Demo (if useful), Product Explanation, Architecture, Engineering Challenges, Technical Decisions, Performance/Metrics, GitHub, App Store/Google Play, Technical Deep Dive`

Tujuannya agar portfolio tidak menjadi over-engineered.

**Recruiter Experience**

Simulasikan recruiter dengan waktu terbatas:
- **30 seconds** — apa yang harus langsung terlihat?
- **2 minutes** — apa yang harus sudah dipahami?
- **5 minutes** — apa yang harus dapat diverifikasi?
- **15 minutes** — apa yang dapat mereka eksplor jika tertarik?

Buat struktur portfolio berdasarkan funnel tersebut.

**Engineering Manager Experience**

Simulasi kedua: jika Engineering Manager membuka portfolio saya, apakah mereka dapat menemukan evidence tentang architecture, technical decision making, trade-offs, scalability, testing, performance, native mobile knowledge, production experience, debugging, reliability, CI/CD, product thinking. Tentukan gap-nya.

**Differentiation**

Cari tahu apa yang membuat portfolio Senior/Staff Mobile Engineer berbeda dari portfolio Flutter Developer biasa. Cari evidence perbedaan Junior vs Mid vs Senior vs Staff dari: actual senior engineer portfolios, job descriptions, engineering blogs, hiring guidance, engineering career ladders jika tersedia. Jangan membuat level framework berdasarkan opini pribadi saja.

**Final Deliverables**

1. Research Summary — pola portfolio mobile engineer profesional yang ditemukan.
2. Benchmark Table — minimal 10 portfolio nyata.
3. Key Patterns — pola yang paling sering muncul.
4. Anti-patterns — apa yang sebaiknya tidak dilakukan.
5. Positioning Recommendation.
6. Portfolio Information Architecture.
7. Flagship Project Strategy — jumlah project dan alasan pemilihannya.
8. Project Recommendations — untuk setiap project: Purpose, Skills demonstrated, Difficulty, Estimated effort, Presentation method, Evidence required, Differentiation.
9. Case Study Template — template final.
10. Presentation System — Website → Demo → Case Study → Engineering Evidence → GitHub/Store.
11. Execution Roadmap — Phase 0 (Preparation), Phase 1 (Portfolio foundation), Phase 2 (Flagship project #1), Phase 3 (Engineering project), Phase 4 (Native/platform project), Phase 5 (Polish and launch). Untuk setiap phase: objective, deliverables, tasks, estimated effort, dependencies, definition of done.

**Critical Constraints**

1. Jangan mengarang fakta.
2. Semua benchmark portfolio harus memiliki sumber asli.
3. Berikan URL sumber asli.
4. Pisahkan: fakta dari sumber, inference, recommendation.
5. Jangan menganggap "Clean Architecture + BLoC + Firebase" otomatis membuat portfolio senior.
6. Jangan menyarankan project hanya karena terlihat keren.
7. Prioritaskan evidence yang meningkatkan employability.
8. Jangan membuat portfolio terlalu besar untuk dipelihara.
9. Jangan membuat gimmick yang tidak berhubungan dengan mobile engineering hanya untuk terlihat unik.
10. Jangan membocorkan confidential information dari pekerjaan saya.
11. Jangan membuat metric palsu.
12. Jika informasi saya tidak cukup, tandai sebagai assumption daripada mengarang.
13. Gunakan sumber terbaru jika informasi dapat berubah.
14. Untuk setiap rekomendasi penting, jelaskan evidence yang mendasarinya.

**Final Decision**

Di akhir research, jangan berhenti pada "berikut beberapa ide". Berikan keputusan konkret: "Jika saya adalah kamu, portfolio yang akan saya bangun adalah X." Kemudian jelaskan alurnya: Positioning → Portfolio Website → Flagship Project #1 → Flagship Project #2 → Engineering Case Study → Open Source → Presentation → Recruiter Funnel.

Buat roadmap yang realistis dan prioritaskan impact per unit of effort.

Target akhirnya: dalam beberapa menit, recruiter dapat memahami siapa saya, apa yang pernah saya bangun, seberapa dalam engineering capability saya, dan memiliki cukup evidence untuk memutuskan bahwa saya layak masuk technical interview.

Jangan hanya memberi teori. Lakukan research terlebih dahulu, kemudian buat strategy dan execution plan berdasarkan hasil research tersebut.

---

## Related repositories yang relevan sebagai bahan (dalam scope sesi ini)

- `arkariz/Saldough` — personal finance app yang sedang direncanakan/dibangun, kandidat kuat untuk flagship project (product engineering + complex domain/money handling).
- `arkariz/new-health-duel` — kandidat untuk showcase arsitektur Clean Architecture/BLoC.
- `arkariz/fullstack-autoledger` — disebut eksplisit sebagai kandidat reuse.
- `arkariz/envflare_cli` — disebut eksplisit sebagai kandidat reuse.
- `arkariz/flutter-package-core`, `arkariz/flutter-dsl` — kandidat untuk kategori "open-source package".
- `arkariz/autoledger-companion-android`, `arkariz/advance-mobile-platform`, `arkariz/flutter-architecture-studi`, `arkariz/flutter-architecture-studi-bank` — referensi arsitektur/pengalaman migrasi, bukan untuk dipublikasikan langsung (perlu dicek batas konfidensialitas).

## Next action (belum dieksekusi)

Brief ini menunggu perintah eksplisit dari pemilik untuk mulai dieksekusi (deep research + strategy + roadmap sesuai "Final Deliverables" di atas). Jangan mulai riset atau implementasi sampai diminta.
