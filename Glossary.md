## B

#### BERT (Bidirectional Encoder Representations from Transformers)

**BERT** is a **pretrained language model** developed by Google that helps machines understand the meaning of language by looking at **both the left and right context** of every word in a sentence (bidirectional).

It is trained on large amounts of text (like Wikipedia) and can be **fine-tuned** for many tasks such as:
- Sentiment analysis
- Question answering
- Text classification
- Named entity recognition

🔍 Why it matters: BERT revolutionized natural language processing (NLP) by significantly improving performance on many language understanding tasks — without needing to train models from scratch.

#### Bias: 
Learner’s built-in limits → consistent mistakes. 

## E
#### Embeddings:
A way to represent complex inputs (like words, sentences, or images) as vectors (lists of numbers).  

🔍 Why do we use them?  
- Machine learning models can’t directly work with raw text or images.
- Embeddings translate those raw inputs into numerical formats that capture their meaning, structure, or relationships.

✨ Example:  You can measure similarity between embeddings. This lets models understand relationships (e.g., king ≈ queen but ≠ apple).

| Word    | Embedding (simplified) |
| ------- | ---------------------- |
| "king"  | [0.8, 0.2, 0.6, ...]   |
| "queen" | [0.8, 0.3, 0.7, ...]   |
| "apple" | [0.1, 0.9, 0.2, ...]   |

📦 In Overton:  
- Pretrained embeddings (like from HuggingFace) can be plugged in as data payloads.
- These embeddings are often trained on huge corpora, which boosts model performance, especially when you don’t have much data.

## F
#### Fit model:
memorized model  
#### Function:
A learned classifier  

## H
#### Hyperparameter
A hyperparameter is a configuration variable that is set manually by a data scientist before the model training begins. Unlike model parameters, such as weights and biases, which are learned automatically from the data during training, hyperparameters are external to the model and control its learning process.  

## M
#### Model generalizations
Whether it learned real patterns or just memorized.

## O
#### Overfitting
When a model learns the **training data too well**, including its noise or quirks, causing it to perform **poorly on new, unseen data**. 

## P
#### Parameter
The **tunable parts** of a model (like weights and biases) that the learning algorithm adjusts to fit the training data.

> 📝 _All weights are parameters, but not all parameters are weights._

#### Pandas  
Dev tools for AI builders. The fastest way to build and ship general AI agents. Simple APIs, zero DevOps, infinite scale.

## R
#### Runtime performance  
Runtime performance refers to how efficiently the model runs in production, including:  
- Speed (how fast it returns predictions)
- Latency (delay between input and output)
- Resource usage (CPU, memory, power)
Basically, it answers: “Can this model respond quickly and efficiently when real users are using it?”  

## S
#### (Production) SLAs- SLA = Service-Level Agreement
This is a contract or standard that defines how well a system must perform in production.  

#### Snorkel
Snorkel AI is a technology startup that empowers data scientists and developers to quickly turn data into accurate and adaptable AI applications with Snorkel Flow, a first-of-its-kind data-centric development platform powered by programmatic labeling. Snorkel Flow reduces the time, cost, and friction of labeling training data so data science and development teams can more easily build and scale AI models to deploy more meaningful applications. Incorporating human judgment into the AI process through subject-matter experts is made more efficient and scalable, leading to more ethical, responsible outcomes. [From Snorkel AI]

#### Supervision
Refers to a machine learning approach where a model is trained on labeled data, with the labels acting as "correct answers" that guide the model to learn the relationship between inputs and outputs. This learning process allows the model to make accurate predictions on new, unseen data by comparing its own predictions against these known correct outputs and adjusting itself to minimize errors  

## T
#### Tensor
A **multi-dimensional array** of numbers—  that stores data (payloads) and is passed around inside the model

## U

#### Underfitting
When a model is **too simple** to capture the patterns in the training data, leading to **poor performance on both training and test data**.

## V
#### Variance
Learner’s sensitivity to training data → instability.  
How much a model’s predictions **change when trained on different datasets**.  
High variance means the model is **too sensitive** to the training data and may not generalize well.

## W
#### Weak supervision:  
Instead of using only human-labeled data, weak supervision uses:  
- Rules (heuristics)
- Distant supervision (e.g., using databases or logs)
- Noisy sources (user clicks, partial matches, etc.)
These are cheaper, faster, and often automated — but less accurate.  

#### Weights
Numbers inside a machine learning model that determine how much influence each input feature has on the model's predictions. They are learned during training.
Weights are also called parameters
Weights / Parameters are the numeric values inside the model that determine how inputs are transformed to outputs. For example, in a neural network, each layer has weights (and biases) which get updated during training.

 








  
