CREATE TABLE IF NOT EXISTS member (
    num INT AUTO_INCREMENT PRIMARY KEY,       -- 고유 사용자 번호
    name VARCHAR(50) NOT NULL,				 -- 이름..
    id VARCHAR(50) NOT NULL UNIQUE,    -- 아이디 (중복 방지)
    password VARCHAR(255) NOT NULL,          -- 비밀번호 (암호화 저장 권장)
    email VARCHAR(100) NOT NULL,             -- 이메일 주소
    address VARCHAR(255),                    -- 주소 (선택 입력 가능)
    phone VARCHAR(20),                       -- 전화번호
    gender VARCHAR(20),  -- 성별 선택값
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- 가입일시
);

SELECT * FROM member;

drop table member;

INSERT INTO member (name, id, password, email, address, phone, gender)
VALUES ('전혜진', 'asdf', '1234', 'asdf@naver.com', '서울시', '010-1234-5678', '여');

INSERT INTO member (name, id, password, email, address, phone, gender)
VALUES ('김보령', 'qwer', '1234', 'qwer@naver.com', '서울시', '010-2345-3333', '여');
INSERT INTO member (name, id, password, email, address, phone, gender)
VALUES ('김진우', 'zxcv', '1234', 'zxcv@naver.com', '서울시', '010-1111-2222', '남');



DESCRIBE member;

USE bookmarketdb;
SHOW TABLES;