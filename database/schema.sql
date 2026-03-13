CREATE TABLE users (
 id SERIAL PRIMARY KEY,
 username VARCHAR(50) UNIQUE,
 display_name VARCHAR(50),
 profile_image TEXT,
 main_position VARCHAR(50),
 sub_positions TEXT[],
 bio VARCHAR(200),
 country VARCHAR(50),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE projects (
 id SERIAL PRIMARY KEY,
 creator_id INTEGER,
 title VARCHAR(20),
 description VARCHAR(300),
 type VARCHAR(20),
 genres TEXT[],
 stage VARCHAR(20),
 needed_positions TEXT[],
 thumbnail_image TEXT,
 visibility VARCHAR(10),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE project_files (
 id SERIAL PRIMARY KEY,
 project_id INTEGER,
 uploader_id INTEGER,
 file_url TEXT,
 file_type VARCHAR(20),
 version INTEGER,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE project_members (
 id SERIAL PRIMARY KEY,
 project_id INTEGER,
 user_id INTEGER,
 role VARCHAR(20),
 position VARCHAR(50),
 joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
