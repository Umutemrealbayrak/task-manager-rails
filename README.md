# 📝 Task Manager Application

Bu proje, kullanıcıların kendi görevlerini oluşturup yönetebildiği basit bir Görev Yönetim Sistemi (Task Manager) uygulamasıdır.

Uygulama Ruby on Rails kullanılarak geliştirilmiş olup, kullanıcı kimlik doğrulaması için Devise gemi entegre edilmiştir.

---

## 📌 Proje Özellikleri

### 🔐 Kullanıcı Yönetimi (Authentication)
- Kullanıcı kayıt olabilir.
- Kullanıcı giriş ve çıkış yapabilir.
- Giriş yapmadan görev sayfalarına erişilemez.
- Her kullanıcı sadece kendi görevlerini görüntüleyebilir.

### ✅ Görev Yönetimi (CRUD)
- Görev oluşturma
- Görev listeleme
- Görev güncelleme
- Görev silme
- Görev durumları:
  - Bekliyor
  - Devam Ediyor
  - Tamamlandı

### ⭐ Bonus Özellikler
- Öncelik sistemi:
  - Düşük
  - Orta
  - Yüksek
- Başlığa göre arama (filtreleme)
- Önceliğe göre sıralama
- Responsive (mobil uyumlu) tasarım
- Bootstrap ile modern arayüz

---

## 🚀 Kullanılan Teknolojiler

- Ruby 3.4.8
- Ruby on Rails 8.1.2
- Devise (Authentication)
- SQLite3
- Bootstrap 5
- HTML / ERB

---

## 💻 Kurulum ve Çalıştırma

### 1️⃣ Projeyi Klonlayın

```bash
git clone <REPO_LINK>
cd task_manager
```

### 2️⃣ Ruby Versiyonunu Kontrol Edin

```bash
ruby -v
```

### 3️⃣ Gerekli Gemleri Yükleyin

```bash
bundle install
```

### 4️⃣ Veritabanını Oluşturun

```bash
rails db:create
rails db:migrate
```

### 5️⃣ Sunucuyu Başlatın

```bash
rails server
```

veya

```bash
rails s
```

### 6️⃣ Tarayıcıdan Erişim

```
http://localhost:3000
```

---

## ⚙️ Faydalı Komutlar

```bash
rails routes
rails console
rails c
rails db:drop db:create db:migrate
rails test
```

---

## 🖥️ Uygulama Kullanımı

1. Kayıt olun ve giriş yapın.
2. Yeni görev oluşturun.
3. Görevleri düzenleyin veya silin.
4. Arama kutusu ile filtreleyin.
5. Öncelik ve durum bilgilerini yönetin.

---

## 🔒 Güvenlik

- Devise ile kimlik doğrulama
- before_action :authenticate_user!
- Kullanıcıya özel erişim

---

## 📁 Proje Yapısı

```
app/
 ├── controllers/
 ├── models/
 └── views/
```

---

## 👤 Geliştirici

Umut Emre Albayrak  
Software Engineer

---

## 📩 İletişim

info@massimocreative.com
