\# luxJob API 🏢



API to query jobs, skills, companies and more from the Luxembourg job market.



\## 🐳 Running with Docker Compose



\### Prerequisites

\- Docker Desktop installed and running



\### Setup

1\. Clone this repository:

&#x20;  git clone https://github.com/chriskwekukukumah/luxJob-API

&#x20;  cd luxJob-API



2\. Create a .Renviron file with your PostgreSQL credentials:

&#x20;  PG\_DB=postgres

&#x20;  PG\_HOST=your-host

&#x20;  PG\_USER=your-user

&#x20;  PG\_PASSWORD=your-password



3\. Build and run:

&#x20;  docker compose up -d --build



4\. Access the API docs at:

&#x20;  http://127.0.0.1:8080/\_\_docs\_\_/



5\. To stop:

&#x20;  docker compose down



\## 📡 Available Endpoints



| Method | Endpoint | Description |

|--------|----------|-------------|

| GET | /skills | Get all skills |

| GET | /skills/{skill\_id} | Get skill by ID |

| GET | /companies | Get all companies |

| GET | /companies/{company\_id} | Get company by ID |

| GET | /vacancies | Get all vacancies |

| GET | /vacancies/{vacancy\_id} | Get vacancy by ID |

| GET | /learning\_tracks | Get all learning tracks |

| GET | /learning\_tracks/{track\_id} | Get learning track by ID |

| GET | /books | Get all books |

| GET | /books/{book\_id} | Get book by ID |

| POST | /log\_search | Log a search query |



\## ⚠️ Known Limitations

\- The .Renviron file must be created manually (not included for security)

\- API connects to an external AWS RDS PostgreSQL database

\- R package installation during Docker build may take 10-15 minutes

