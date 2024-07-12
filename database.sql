CREATE TABLE cohorts (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(60) NOT NULL
);

CREATE TABLE milestones (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(60),
  "date" DATE,
  "github_pr" VARCHAR(255),
  "codewars_rank" INTEGER,
  "cohort_id" INTEGER NOT NULL,
  FOREIGN KEY (cohort_id) REFERENCES Cohorts(id)
);

CREATE TABLE trainees (
  "id" SERIAL PRIMARY KEY,
  "github_name" VARCHAR(60) NOT NULL UNIQUE,
  "cohort_id" INTEGER NOT NULL,
  FOREIGN KEY (cohort_id) REFERENCES Cohorts(id)
);


CREATE TABLE traineeprogress (
    id SERIAL PRIMARY KEY,
    github_name VARCHAR(64),
    cohort_id INTEGER,
    milestones TEXT,
    date DATE,
    required_pull_requests INTEGER,
    codewars INTEGER,
    cohort VARCHAR(50)
);


INSERT INTO cohorts ("name") VALUES ('ZA-2');
INSERT INTO cohorts ("name") VALUES ('LDN-10');
