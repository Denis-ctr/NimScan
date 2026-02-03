#  NimScan: Ultra-Lightweight TCP Port Scanner

<p align="center">
  <a href="https://nim-lang.org">
    <img src="https://img.shields.io/badge/Nim-FFE953?style=for-the-badge&logo=nim&logoColor=white" alt="Nim" />
  </a>
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License" />
  <img src="https://img.shields.io/badge/Platform-Linux%20%7C%20macOS-lightgrey?style=for-the-badge&logo=linux" alt="Platform" />
  <img src="https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge" alt="Status" />
</p>

---

## Haqqında (About)
**NimScan** — Nim proqramlaşdırma dili ilə hazırlanmış, minimalistik və yüksək performanslı bir port skanerdir. Bu alət həm sistem administratorları, həm də kibertəhlükəsizlik həvəskarları üçün şəbəkə üzərindəki açıq TCP portlarını sürətli şəkildə müəyyən etmək üçün nəzərdə tutulub.

---


##  Əsas Özəlliklər (Key Features)

*   **Yüksək Sürət:** Nim dilinin C-yə yaxın performansı ilə sürətli skan.
*   **İkili Rejim:** * **CLI Mode:** Arqumentlərlə sürətli giriş (məs: `./scanp 127.0.0.1 1 1024`).
  * **Interactive Mode:** Heç bir parametr daxil etmədən sual-cavab formatı.
*  **Resurs İdarəetməsi:** Hər bir yoxlamadan sonra socket-lərin avtomatik bağlanması (Resource-safe).
*   **Səliqəli Çıxış:** Minimalist və oxunaqlı Terminal UI.

---

##   Texniki İş Prinsipi
Skaner hər bir port üçün yeni bir socket yaradır və hədəf IP-yə TCP üçtərəfli əl sıxma (three-way handshake) sorğusu göndərir.



---

##   Quraşdırma (Installation)

Sisteminizdə [Nim](https://nim-lang.org/install.html) compiler olduğundan əmin olun.

```bash
# Reponu klonlayın
git clone [https://github.com/istifadeci_adiniz/NimScan.git](https://github.com/istifadeci_adiniz/NimScan.git)
cd NimScan

# Kodu kompayl edin (Speed optimization aktiv)
nim c -d:release --opt:speed scanp.nim

```
```bash
#############################################
                NimScan
 -------------------------------------------

Nim Port Scanner
================
Port open: 22
Port open: 80
Port open: 443
Port open: 3306

```


