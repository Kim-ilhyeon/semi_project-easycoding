# 쉽코딩 (EasyCoding)

> 이동 중에도 부담 없이 개발 지식을 학습하고, 학습 기록을 통해 꾸준한 학습 습관을 만들도록 돕는 개발 학습 관리 플랫폼

## 프로젝트 소개

**쉽코딩(EasyCoding)**은 개발 학습과 개발자 취업을 준비하는 사용자를 위한 학습 관리 플랫폼입니다.
객관식·빈칸형 문제를 제공하여 별도의 코딩 환경이 없는 이동 중에도 학습할 수 있도록 하고, 일일 문제·오답 풀이·학습 통계·커뮤니티를 통해 학습의 시작과 지속을 지원합니다.

### 기획 배경

기존 코딩 학습 서비스는 직접 코드를 작성하는 실습 중심인 경우가 많아 장소와 시간의 제약이 있습니다. 또한 처음 개발을 공부하는 사용자는 무엇부터 학습해야 할지 정하기 어렵고, 혼자 학습할 때 꾸준한 습관을 만들기 어렵다는 문제를 해결하고자 했습니다.

EasyCoding은 짧은 문제 풀이를 통해 학습 진입 장벽을 낮추고, 일일 학습·오답 관리·학습 기록을 통해 지속적인 학습을 유도하는 것을 목표로 합니다.

## 개발 기간 및 팀

- **개발 기간:** 2026. 07. 15. ~ 2026. 08. 14.
- **팀명:** Be전공자
- **인원:** 3명

| 이름 | 프로젝트 역할 | 담당 기능 |
| --- | --- | --- |
| 박소은 | 팀장 · 이슈/일정 관리 | 회원가입, 로그인·로그아웃, 회원정보 수정·탈퇴, 대댓글, 학습 통계 및 학습 잔디 |
| 김일현 | 형상 관리 · 회의록 | 게시글 CRUD, 임시저장, 댓글 CRUD, 비로그인 접근 제어(Interceptor), 공통 Modal |
| 한태우 | DB 관리 | AI 문제 생성, 문제 DB 저장, 일일 문제 조회, 채점, 오답 풀이 |

## 주요 기능

| 영역 | 기능 |
| --- | --- |
| 회원 | 회원가입, 로그인·로그아웃, 회원정보 수정, 회원탈퇴 |
| 학습 | AI 기반 문제 생성, 일일 문제 조회, 문제 풀이 및 채점, 오답 풀이 |
| 학습 관리 | 학습 통계, 학습 잔디를 통한 학습 기록 확인 |
| 커뮤니티 | 게시글·댓글·대댓글 CRUD, 게시글 임시저장 |
| 공통 | Spring Interceptor 기반 비로그인 접근 제어, 공통 Modal |

### 향후 개선 기능

- 소셜 회원가입·로그인
- 관리자 기능
- 연속 학습 중단 알림

## 서비스 화면

> 실제 화면 캡처 파일을 `docs/images/`에 저장한 뒤 아래 경로를 연결합니다.

| 화면 | 설명 | 이미지                         |
| --- | --- |-----------------------------|
| 메인 / 학습 통계 | 학습 현황과 학습 잔디를 통해 기록을 확인 | `/docs/images/main.png`     |
| 로그인 | 회원 인증 화면 | `docs/images/login.png`     |
| 문제 풀이 | 일일 문제 조회, 답안 제출, 채점 및 오답 학습 | `docs/images/learning.png`  |
| 커뮤니티 | 게시글과 댓글을 통한 정보 공유 | `docs/images/community.png` |

## 기술 스택

> 아래 구성은 프로젝트 설명을 바탕으로 작성했습니다. Java·Spring Boot·MySQL 등의 **정확한 버전은 프로젝트 설정 파일과 실행 환경을 확인한 후 기입**합니다.

| 구분 | 기술 |
| --- | --- |
| Backend | Java, Spring Boot, Spring Security, Spring Mail, Spring AI, MyBatis, Lombok, Servlet |
| Frontend | JSP, HTML, CSS, JavaScript, Ajax, JSTL, EL |
| Database | MySQL |
| AI | OpenAI API |
| Server | Embedded Tomcat |
| Development | IntelliJ IDEA |
| Collaboration | Git, GitHub, Figma, Notion, Slack, ERDCloud |

## 프로젝트 구조

```text
Client (JSP / JavaScript / Ajax)
        ↓
Controller
        ↓
Service
        ↓
Mapper (MyBatis)
        ↓
MySQL
```

> 실제 패키지 구조, DTO/VO 사용 방식 및 설정 파일 기준으로 최종 보완합니다.

## 데이터베이스

학습·회원·커뮤니티 데이터를 중심으로 설계했습니다.

- 회원 및 인증 정보
- 문제·정답·문제 풀이·오답 기록
- 학습 기록·학습 통계
- 게시글·댓글·대댓글·임시저장

> SQL 덤프를 기준으로 최종 테이블 목록, PK/FK 관계 및 ERD 이미지를 추가합니다.

## 협업 방식

### 브랜치 전략

Git Flow 방식을 참고해 다음과 같이 작업했습니다.

```text
main
└── develop
    ├── feature/...
    ├── fix/...
    └── docs/...
```

- 기능별 브랜치에서 개발 후 Pull Request를 통해 병합
- 매일 개발 종료 전 코드 리뷰 진행
- 형상 관리와 회의록을 분리해 협업 과정 기록

자세한 Git 사용 방법은 [GIT_USAGE.md](./GIT_USAGE.md)에서 확인할 수 있습니다.

## 프로젝트 문서

- [요구사항 및 WBS (Google Sheets)](https://docs.google.com/spreadsheets/d/1YktKIGsws0Yv6sRyWs9GUJuFQYRzqWM4T2NB9FS6jcI/edit?usp=sharing)
- [UI 설계 (Figma)](https://www.figma.com/design/tKYHHUukfR1qnf4Wmuwe5z/UI?node-id=0-1&t=NuxY1oiRjEKWWICO-0)
- 기능 명세서
- 요구사항 정의서
- ERD

## 회고 및 개선 방향

코드 리뷰를 매일 진행하며 코드 품질과 구현 방식을 함께 점검했지만, 그만큼 개발 시간이 길어지는 경험도 했습니다. 또한 기획 단계에서 도출한 세부 기능이 많아 개발 범위가 커졌고, 코드 컨벤션과 브랜치·커밋 규칙의 사전 합의 및 숙지가 충분하지 않아 추적과 협업에 어려움이 있었습니다.

다음 프로젝트에서는 기획 단계에서 핵심 기능과 우선순위를 더 명확히 설정하고, 코드 컨벤션·브랜치명·커밋 메시지 규칙을 시작 전에 문서화하여 팀 전체가 숙지한 뒤 개발을 진행하고자 합니다.
