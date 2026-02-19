# 📝 Task Manager - Ruby on Rails

Bu proje Ruby on Rails kullanılarak geliştirilmiş bir görev yönetim uygulamasıdır. Kullanıcılar kayıt olabilir, giriş yapabilir ve kendi görevlerini oluşturup yönetebilir. Proje modern bir arayüz, kullanıcı doğrulama sistemi ve temel CRUD işlemlerini içermektedir.

## 🚀 Özellikler

- Kullanıcı kayıt ve giriş sistemi (Devise)
- Görev oluşturma, düzenleme ve silme
- Çöp kutusu (Soft Delete) sistemi
- Silinen görevleri geri yükleme
- Öncelik sistemi (Düşük / Orta / Yüksek)
- Durum sistemi (Bekliyor / Devam Ediyor / Tamamlandı)
- Canlı arama (Live Search)
- Önceliğe göre sıralama
- Responsive tasarım (Bootstrap)
- Silme ve güncelleme için onay modalı
- Flash mesaj bildirimleri

## 🛠️ Kullanılan Teknolojiler

- Ruby 3.4.8
- Rails 8.1.2
- SQLite3
- Devise
- Bootstrap 5
- Turbo / Hotwire
- HTML / ERB / JavaScript

## ⚙️ Kurulum

Projeyi bilgisayarınıza klonlayın:

git clone <repository-url>  
cd task-manager-rails

Gerekli paketleri yükleyin:

bundle install

Veritabanını oluşturun:

rails db:create  
rails db:migrate

Sunucuyu çalıştırın:

rails s

Tarayıcıdan açın: http://localhost:3000

## 👤 Kullanım

- Kayıt Ol sayfasından hesap oluşturabilirsiniz
- Giriş yaptıktan sonra görev ekleyebilirsiniz
- Görevleri düzenleyebilir, silebilir ve çöp kutusuna taşıyabilirsiniz
- Çöp kutusundan görevleri geri yükleyebilir veya kalıcı silebilirsiniz
- Üst menüdeki arama alanı ile başlığa göre filtreleme yapabilirsiniz
- Önceliğe göre sıralama yapabilirsiniz

## 🗑️ Çöp Kutusu Sistemi

Silinen görevler tamamen silinmez, çöp kutusuna taşınır. Buradan geri yüklenebilir veya kalıcı olarak silinebilir.

## 🎨 Arayüz

Bootstrap kullanılarak responsive tasarım oluşturulmuştur. Masaüstü ve mobil cihazlarla uyumludur. Durum ve öncelikler renkli etiketlerle gösterilir. Silme ve güncelleme işlemleri modal onay sistemi ile yapılır.

## 👨‍💻 Geliştirici

Umut Emre Albayrak  
Software Engineer
