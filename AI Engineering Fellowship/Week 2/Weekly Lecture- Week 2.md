### **1. Model and Weights**

- The **model** is like an empty brain—has the _ability_ to solve a problem but hasn't been exposed to anything.
    
- **Weights** represent the _knowledge_—they tell the model how to solve problems.
    
- You need both the **model + weights** to make it functional.
    
- Weights are like **directions**.
    
- If you have a **neural network**, it’ll do feature detection automatically.
    
- **Training** = passing data through the model to update weights.
    

---

### **2. Context in AI**

- **Context** is the environment that makes everything make sense (past conversations, who, what, where).
    
- Different context → different outputs.
    
- MCP gathers necessary context to complete actions.
    
- "It’s not smart, it’s just good at making predictions."
    

---

### **3. Tokens and AI Response Time**

- AI response time depends on:
    
    - Number of **input/output tokens**.
        
    - **Compute power** required.
        
    - Number of **active users**.
        
- **Tokenization**:
    
    - Text is converted into tokens → tokens converted to numbers → fed into model → model outputs predictions.
        
    - Model doesn’t care about text meaning, only patterns.
        
    - Different LLMs have **different tokenizers**—tokenized input from one LLM can’t be used in another.
        
- Example:
    
    - Summarizing a book → uses many **output tokens**.
        
    - Model predicts you want a long answer (based on prior data).
        
- Link: [Google Cloud - What is prompt engineering?](https://cloud.google.com/discover/what-is-prompt-engineering)
    

---

### **4. Inference and Generalization**

- **Inference** = when someone uses your model.
    
- Models don’t always generalize:
    
    - Example: trained on white faces, may not recognize Black faces.
        
    - Need to ensure **diverse datasets**: ethnicities, ages, paintings, etc.
        
- The challenge: **making something consistent in a non-deterministic system**.
    

---

### **5. Languages and Data Access**

- Different languages have **different nuances**.
    
    - Arabic training datasets are **smaller** than English.
        
- You have to use **open models/tools** because of **limited data access**.
    
- There’s a **race to gather data** now because it may become **illegal** to use certain data later.
    

---

### **6. MCP (Model Context Protocol)**

- Website: [https://modelcontextprotocol.io/](https://modelcontextprotocol.io/)
    
- Presented by **Anthropic**.
    
- **MCP** is a **standard protocol** for how to connect tools and services to LLMs.
    
    - Keeps things **consistent and predictable**.
        
- Architecture:
    
    - **LLM → MCP Server → Service** (e.g., YouTube, MongoDB).
        
    - Each service needs its **own MCP server**.
        
    - These servers are **locally hosted**, not public or cloud-hosted.
        
- In **Cursor**: you can pick local/remote MCP servers to use or create your own.
    

---

### **7. Terminology**

- **Protocol**: A set of rules for how something should be done.
    
- **LLM (Large Language Model)**: A type of model, still fundamentally just a model.
    

---

### **8. Miscellaneous**

- [Levels.io](http://levels.io/) (GPT wrapper for a photo AI app) ← worth investigating further.