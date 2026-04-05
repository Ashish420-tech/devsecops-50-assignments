# Assignment 04 - Static Code Analysis using SonarQube

## 📌 Objective

Perform static code analysis using SonarQube to identify code quality issues and security vulnerabilities.

---

## 🛠️ Tools Used

* SonarQube (Docker)
* SonarScanner CLI
* GitHub Actions (for CI/CD)

---

## ⚙️ Setup Steps

### 1. Run SonarQube using Docker

```bash
docker run -d --name sonarqube -p 9000:9000 sonarqube:lts
```

### 2. Access SonarQube

* URL: http://localhost:9000
* Default credentials: admin/admin

### 3. Generate Token

* Go to My Account → Security → Generate Token

### 4. Install SonarScanner

```bash
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-5.0.1.3006-linux.zip
unzip sonar-scanner-cli-5.0.1.3006-linux.zip
sudo mv sonar-scanner-5.0.1.3006-linux /opt/sonar-scanner
export PATH=$PATH:/opt/sonar-scanner/bin
```

### 5. Configure sonar-project.properties

```properties
sonar.projectKey=assignment-04
sonar.sources=app.py
sonar.login=YOUR_TOKEN
```

### 6. Run Scan

```bash
sonar-scanner
```

---

## 📊 Results

* SonarQube successfully analyzed the code
* Identified code quality issues and security insights
* Scan scope optimized to avoid unnecessary files

---

## 💡 Key Learnings

* Importance of static code analysis (SAST)
* Avoid scanning dependencies and virtual environments
* Secure handling of authentication tokens

---

## 🚀 Outcome

Successfully integrated SonarQube for static code analysis and validated results via dashboard.
