# Project overview

The project is for a Speanish Language Learning School to extend the language offering and also augment the learning experience for students between instructor-led classes. The project must make extensive use of AI

The school has an existing learning portal and learning record store.

This project will:

- Build a collection of learning apps using various different use-cases of AI
- Maintain the learning experience the learning portal using AI developer tools
- Extend the platform to support various different languages

# Solution overview

The existing learning portal will be enhanced with additional modules that enrich the learning experience and leverage AI tools.

Student modules will include:

- Sentence construction
- Text adventure
- Core word flashcards
- Teaching assistant

Teacher modules will include:

- Grading
- Office hours
- Student progress tracking
- Student messaging

Here is a high level overview of the solution:

![Overview](./images/overview.png)

# Module design

## Sentence constructor

The purpose of this module is to create a chat based experience for the student to practice their translation skills using whole sentences.

Of not in the design is the use of a database to store system prompts, user prompts and user responses (memory). This is to allow for the system to learn from the user responses and improve the user experience over time. Additionally, the system will use a router to do both input and output guardrails (to ensure nothing inappropriate or sensitive is sent or received from the LLM) as well as the ability to route to multiple LLMs if the particular language is better suited to a different LLM.

![Sentence constructor](./images/sentence-constructor.png)

## Core word flashcards

The purpose of this module is to create a flashcard based learning experience using the most common words in the target language

`TBD`

# Non-Functional Requirements

When designing the system, non-functional requirements (NFRs) ensure the system is reliable, scalable, and user-friendly.

---

### **1. Performance & Scalability**

- The system must support **50 concurrent users** without performance degradation.
- Response time for user interactions should be **< 2 seconds** under normal load for most interactions.
- Support **scaling** to handle peak enrollment periods.

---

### **2. Availability & Reliability**

- Achieve **95%+ uptime** outside of normal maintenance.
- Implement **failover** mechanisms for critical services.
- Support **Recovery Point Objective (RPO) of 1 hour** and **Recovery Time Objective (RTO) of 4 hours** to ensure business continuity.

---

### **3. Security & Compliance**

- Ensure **role-based access control (RBAC)** for students, instructors, and admins.
- Encrypt **data in transit (TLS 1.2+) and at rest (AES-256)**.
- Implement **SSO (Single Sign-On) and MFA (Multi-Factor Authentication)**.

---

### **4. Maintainability & Supportability**

- Use **microservices architecture** for modular and independent updates.
- Could support **API versioning** to prevent breaking changes.
- Provide **detailed logging and monitoring** with alerts for failures.
- Should implement **CI/CD pipelines** for automated testing and deployment.

---

### **5. Usability & Accessibility**

- Should follow **WCAG 2.1 (AAA) accessibility guidelines** for inclusivity.
- Could support **multiple languages** and **localized content**.
- Should enable **cross-device compatibility** (desktop, mobile, tablet).

---

### **6. Data Management & Analytics**

- Store student progress and performance metrics efficiently.
- Should upport **real-time analytics** for course engagement tracking.
- Should provide **automated backups and disaster recovery** plans.

---

### **7. Cost Optimization & Efficiency**

- Leverage **serverless and cloud-native solutions** where applicable.
- Implement **auto-scaling policies** to optimize cloud costs.

# Assumptions

- The solution is built for a startup and will make compromises to support getting a MVP to market and test market fit.
- The solution should be able to scale if market fit is validated and customer demand increases
