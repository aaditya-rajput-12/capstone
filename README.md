# 🏥 AnoN Healthcare

**A Secure, AI-Powered Health Portal with Blockchain Integrity**

> Submitted to the Grand Hackathon at Acharya Institute of Technology, Bangalore

**Team An0n** | Pravesh Dubey • Nischal H Ameen • Nitin Chitrakar • Uttam Upendra Hegde

---

## 🎯 Problem & Vision

Healthcare data is fragmented, vulnerable, and difficult to navigate. Patients struggle to understand medical records. Critical health information isn't readily available during emergencies. Traditional systems lack transparency and audit trails.

**AnoN Healthcare** solves this by combining **AI-powered intelligence** with **blockchain security** into a unified, patient-centric platform that's transparent, efficient, and trustworthy.

---

## ✨ Key Features

### 🤖 AI-Powered Intelligence

**Document Analysis & Understanding**
- Upload medical documents (PDFs, lab reports, X-ray images)
- AI automatically extracts and summarizes key findings
- Complex medical jargon translated into plain language
- Interactive Q&A to clarify any medical information

**Emergency First-Aid Assistant**
- Voice-guided, step-by-step instructions for emergencies
- One-click ambulance dispatch with automatic location detection
- Fallback AI chatbot for unlisted emergency scenarios
- Designed for accessibility during critical moments

### 🔗 Blockchain-Backed Security

**Immutable Medical Records**
- SHA-256 hashing creates a cryptographic fingerprint of each document
- Document hashes stored on blockchain—not sensitive data
- Instantly verify if records have been tampered with
- Permanent, auditable history of all medical documents

### 🏥 Unified Healthcare Portal

**Multi-Role Dashboards**
- Separate, secure interfaces for Hospital Admins, Doctors, and Patients

**Seamless Appointment System**
- Find hospitals and book appointments with specific doctors
- Auto-filled patient details for faster booking
- Automated patient account creation on first booking

**Centralized Medical Hub**
- Patients: Upload old documents, add allergies and conditions, view/cancel appointments
- Doctors: Access full patient history, upload prescriptions and reports
- Complete medical timeline in one place

---

## 🛠️ Tech Stack

| Component | Technology |
|-----------|-----------|
| **Backend** | Python 3, Flask |
| **Database** | MySQL with SQLAlchemy ORM |
| **Frontend** | HTML5, CSS3, JavaScript, Bootstrap 5 |
| **AI** | Google Gemini API (1.5-flash) |
| **OCR** | Tesseract-OCR, PyMuPDF |
| **Geolocation** | geopy, Nominatim, GeoIP2 |
| **Security** | SHA-256, Werkzeug password hashing |
| **APIs** | Web Speech API, Geolocation API |

---

## 🚀 Quick Start

### Prerequisites

- Python 3.8+
- MySQL server (XAMPP recommended)
- Tesseract-OCR (added to PATH)
- GeoLite2-City.mmdb from MaxMind

### Installation

1. **Clone & Setup**
   ```bash
   git clone <repository-url>
   cd <project-directory>
   pip install -r requirements.txt
   ```

2. **Configure Environment**
   ```bash
   # Rename and edit .env file
   cp .env.example .env
   # Add your GEMINI_API_KEY
   # Place GeoLite2-City.mmdb in root directory
   ```

3. **Initialize Database**
   ```bash
   # Create empty database named 'hospital_db' in MySQL
   
   # Generate tables
   export FLASK_APP=app.py  # macOS/Linux
   # or: set FLASK_APP=app.py  # Windows
   
   flask shell
   >>> from app import db
   >>> db.create_all()
   >>> exit()
   ```

4. **Run the Application**
   ```bash
   python app.py
   ```
   Visit `http://127.0.0.1:5000`

---

## 📖 Usage Guide

### For Hospital Admins
1. Register your hospital at `/hospitals`
2. Log in with hospital credentials
3. Register doctors through the admin panel

### For Patients
1. Book first appointment at `/inperson` (creates account automatically)
2. Log in at `/patient_login` using email/phone + Date of Birth
3. Manage appointments, upload medical documents, view history

### For Doctors
1. Log in with doctor credentials
2. Access patient history and medical records
3. Upload prescriptions and reports
4. Provide recommendations through the portal

### Emergency Features
1. Navigate to `/emergency`
2. Select emergency type for voice-guided instructions
3. Use one-click ambulance dispatch
4. Ask the AI chatbot for additional guidance

---

## 🔐 Security Highlights

- **Password Security:** Werkzeug hashing for all credentials
- **Data Integrity:** Blockchain-verified medical records
- **Privacy:** Sensitive data never stored on public chains
- **Audit Trail:** Immutable record of all document uploads
- **Role-Based Access:** Distinct permissions for each user type

---

## 📦 Project Structure

```
anon-healthcare/
├── app.py                 # Flask application entry point
├── requirements.txt       # Python dependencies
├── .env.example          # Environment template
├── templates/            # HTML templates
│   ├── hospital_register.html
│   ├── patient_login.html
│   ├── emergency.html
│   └── ...
├── static/               # CSS, JS, images
└── GeoLite2-City.mmdb   # Geolocation database
```

---

## 🎮 Demo Workflow

```
1. Register Hospital → Credentials created
2. Login as Admin → Add Doctor
3. User visits /inperson → Books appointment
4. New patient account created automatically
5. Patient logs in → Uploads medical documents
6. AI analyzes documents → Summary generated
7. Doctor reviews patient history → Uploads report
8. Blockchain verifies integrity → Records secured
9. Emergency call → AI guides + Ambulance dispatched
```

---

## 🌟 Innovation Highlights

✅ **First-aid guidance during emergencies** with voice synthesis  
✅ **Document analysis** without storing sensitive data on-chain  
✅ **Automatic patient onboarding** using DOB as secure password  
✅ **Reverse geocoding** for accurate emergency dispatch  
✅ **Multi-role system** with role-based dashboards  
✅ **Immutable medical audit trail** via blockchain  

---

## 📝 Future Roadmap

- [ ] Integration with actual ambulance services
- [ ] Prescription management and pharmacy integration
- [ ] Telemedicine video consultation module
- [ ] Mobile app (React Native)
- [ ] Advanced analytics for health trends
- [ ] Integration with more blockchain networks
- [ ] HIPAA/privacy compliance documentation

---

## 🤝 Contributing

This is a hackathon submission. For the competition phase, contributions are limited to team members.

---

## 📄 License

This project is created for educational and hackathon purposes.

---

## 💬 Support

For questions or issues during the hackathon, please reach out to the team via the submission portal.

---

**Made with ❤️ by Team An0n**
