from prometheus_client import start_http_server, Counter
import time

REQUEST_COUNT = Counter('app_requests_total', 'Total number of requests')

def process_request():
    REQUEST_COUNT.inc()

if __name__ == '__main__':
    start_http_server(8000)
    while True:
        process_request()
        time.sleep(2)
