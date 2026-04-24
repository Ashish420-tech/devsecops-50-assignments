from flask import Flask, request
import logging

app = Flask(__name__)

LOG_FILE = "/tmp/devsecops-app.log"

logging.basicConfig(
    filename=LOG_FILE,
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s"
)

@app.route("/")
def home():
    logging.info("Normal request received")
    return "DevSecOps SIEM Demo App Running"

@app.route("/login", methods=["POST"])
def login():
    username = request.form.get("username")
    password = request.form.get("password")

    if password == "admin123":
        logging.warning(f"WEAK PASSWORD LOGIN detected for user={username}")
        return "Login successful (weak password detected)"

    logging.info(f"Login attempt failed for user={username}")
    return "Login failed"

@app.route("/admin")
def admin():
    ip = request.remote_addr
    logging.error(f"UNAUTHORIZED ACCESS ATTEMPT from IP={ip}")
    return "Access Denied", 403

@app.route("/error")
def error():
    logging.error("APPLICATION ERROR triggered manually")
    return "Error simulated"

if __name__ == "__main__":
    print(f"Logs will be stored at: {LOG_FILE}")
    app.run(host="0.0.0.0", port=5000)
