---
title: Module 1 Tests — course introduction
author: Ceven Jupiter Knowles
course: Prompt Engineering for ChatGPT
module: 1
type: tests
date: 2025-11-27
updated: 2025-11-27
tags: [PromptEngineering, AIEngineering, prompt-engineering-for-chatgpt, course_1, module_1, tests, Vanderbilt, Coursera]
description: >
  This file contains tests work for module 1.
---
# Graded Assignment 1
## Creating Your First Prompts

#### 1. Create a prompt for a large language model, such as ChatGPT, to describe how large language models work. Ask at least three follow-up questions based on the output. Provide the prompts and outputs from the conversation as the answer.

#### Answer
Me:
Can you summarise in one paragraph how large language models work?

ChatGPT:
Large language models learn statistical patterns in text by training on enormous datasets, adjusting billions of internal parameters to predict the next token in a sequence. Through this repeated prediction process, they build a layered internal representation of grammar, semantics, reasoning patterns, factual associations, and even task structures. At runtime, the model takes an input prompt, encodes it into vectors, and then generates tokens one by one—each step influenced by both the prompt and its learned internal patterns—allowing it to produce coherent responses, follow instructions, or solve problems without explicit programming.

Me:
Is this the same across all LLMs?

ChatGPT:
Broadly yes—but with meaningful variations.

Almost all LLMs share the same *core principle*: they learn by predicting the next token and adjusting internal parameters to capture patterns in language. This predictive-learning architecture (the Transformer) is the common foundation behind GPT, Claude, Gemini, LLaMA, Mistral, and most modern open-source models.

However, they differ in important ways:

* **Training data**: size, diversity, quality, and recency vary widely.
* **Model size and architecture tweaks**: some use standard Transformers, others use mixtures-of-experts (MoE), rotary positional embeddings, or optimized attention mechanisms.
* **Fine-tuning strategy**: instruction tuning, reinforcement learning from human feedback (RLHF), preference optimization (DPO), or domain-specialized training can change the model’s style and capabilities.
* **Inference techniques**: sampling strategies, caching, parallelism, and quantization differ across model families.

So the *fundamental mechanism* is shared, but the *capabilities, behavior, and efficiency* can differ substantially depending on these design choices.

Me:
What are the differences between Transformers, MoE, rotary positional embeddings, and optimized attention mechanisms?

ChatGPT:
Here’s a clean, high-resolution breakdown of the four concepts and how they differ:

***

## **1. Transformers (the overall architecture)**

**What they are:**\
The core neural architecture behind almost all modern LLMs.

**Key idea:**\
Transformers use *self-attention* to let every token look at every other token in the input, learning relationships across a sequence without relying on recurrence (RNNs) or convolution (CNNs).

**Why it matters:**\
This architecture scales extremely well and captures long-range dependencies in language.

**Think of it as:**\
The *entire building*—all other items below are components or upgrades inside that building.

***

## **2. Mixture-of-Experts (MoE)**

**What it is:**\
A scaling technique where the model contains multiple “expert” subnetworks, but only a small subset is activated per token using a gating network.

**Key idea:**\
Instead of making one huge dense model, MoE spreads capacity across many experts while keeping compute low at inference.

**Why it matters:**

* Higher capacity without proportional compute cost

* More specialization: different experts may handle different linguistic or reasoning patterns

**Think of it as:**\
A *neighborhood of specialists* where only the right experts wake up depending on the token.

***

## **3. Rotary Positional Embeddings (RoPE)**

**What they are:**\
A method for encoding token order into the model using rotations in a continuous vector space.

**Key idea:**\
Transformers need position info. RoPE does this efficiently and allows *extrapolation* to longer contexts better than older positional systems.

**Why it matters:**

* Enables long context windows (many current LLMs use RoPE extensions)

* More stable and smoother positional encoding than sinusoidal alternatives

**Think of it as:**\
A *mathematical compass* that helps the model understand sequence order and distance.

***

## **4. Optimized Attention Mechanisms**

**What they are:**\
A general category describing any improvement that makes attention faster, cheaper, or more memory-efficient.

**Examples:**

* FlashAttention (faster, memory-efficient exact attention)

* Multi-Query Attention (Mistral, GPT-4)—reduces memory by sharing key/value projections

* Linear attention variants (for extreme long contexts)

* Sliding-window or blockwise attention (Gemini, Claude optimizations)

**Key idea:**\
Standard attention scales with *O(n²)* memory/time. Optimizations reduce that cost so models can handle longer inputs or run faster.

**Why it matters:**

* Enables 100k–1M token contexts

* Reduces GPU requirements

* Improves latency

**Think of it as:**\
Upgrading the *engine* of the Transformer so it can handle more data with less fuel.

***

## **How they relate**

* **Transformer** = the base architecture.

* **Rotary positional embeddings** = how positions are encoded *inside* the Transformer.

* **Optimized attention** = ways to compute attention more efficiently *within* the Transformer.

* **MoE** = a way to scale the Transformer by adding many specialized expert modules.

They are not competing concepts—they are *layers of evolution* that can coexist in a single model.

***

If you'd like, I can also map each method to real models (GPT-4/5, Claude, Gemini, LLaMA, Mistral), or build you a visual diagram summarizing how these components interact.


Me:
Could you give me a list of the top 5 major LLMs and which types of architecture they use?

ChatGPT:
Here’s a breakdown of five major large-language-models (LLMs) and the architectures they use:

Model	Developer	Architecture type
GPT‑4	OpenAI	Dense decoder-only Transformer (standard Transformer architecture) 
newsletter.semianalysis.com
+2
kafkai.com
+2

PaLM (~540B)	Google AI	Dense decoder-only Transformer (no public large-scale MoE disclosed for that version) 
Wikipedia
+1

Gemini 1.5	DeepMind / Google	Transformer + Mixture-of-Experts (MoE) architecture (“expert” subnetworks selectively activated) 
blog.google
+1

LLaMA 4 (the latest by Meta AI)	Meta AI	Mixture-of-Experts (MoE) variant of the Transformer architecture (sparse routing) 
AI Meta
+2
Wikipedia
+2

Mixtral 8×7B (open-source)	Mistral AI	Sparse mixture-of-experts Transformer: at each layer a router picks a subset of expert feed-forward networks. 
arxiv.org
+1

If you like, I can extend this list to the top 10 models and include architecture details (dense vs sparse, long-context window, expert count, etc.).

#### 2. Create a prompt for a large language model, such as ChatGPT, that asks it to perform an instruction other than answering a question. For example, ask ChatGPT to create a meal plan, plan a trip, create a recipe, or help you diagnose a problem. Provide the prompts and outputs from the conversation as the answer.

#### Answer

Me:
Can you tell me how to make the perfect espresso?

ChatGPT:
Absolutely — here’s the distilled, no-nonsense version of *how to pull a perfect espresso*, based on what top baristas agree on. This is practical, reproducible, and tuned for taste clarity and consistency.

***

# **The Perfect Espresso: The Core Formula**

### **1. Dose (the coffee amount)**

* **18–20 g** of high-quality, freshly roasted beans

* Grind **fresh** and **fine** (about table-salt fine)

* Espresso is extremely sensitive to grind size — *this is your main control dial.*

***

### **2. Distribution & Tamping**

* Shake or tap the portafilter to level the grounds

* Tamp with:

  * **~15–20 kg** of pressure

  * **Perfectly even** (the *levelness* matters more than the strength)

*Goal: a uniform coffee bed that water passes through evenly.*

***

### **3. Brew Ratio**

The gold standard:

**1:2 ratio\
(For 18 g in → 36 g out)**

This defines the balance between sweetness, acidity, and bitterness.

***

### **4. Brew Time**

* **25–30 seconds**, starting the moment you hit the button

* If it runs too fast → grind finer

* Too slow → grind coarser

***

### **5. Water**

* **Temperature: 92–96°C**

* Clean, filtered water with balanced minerals (not distilled)

***

### **6. Shot Appearance**

Look for:

* Steady, thick “mouse tail” stream

* Rich, even crema

* No blonding until the very end (pale yellow = extraction is done)

***

# **Taste Calibration (the secret)**

If the shot tastes **sour** → under-extracted → grind **finer**\
If the shot tastes **bitter** → over-extracted → grind **coarser**\
If the shot tastes **hollow/thin** → increase dose or reduce output\
If the shot tastes **muddy/overwhelming** → decrease dose or increase output

This is the real artistry.

***

# **What *Perfect* Tastes Like**

A great espresso should be:

* Sweet first

* Structured acidity

* Balanced bitterness

* Thick, syrupy mouthfeel

* Long, pleasant finish

Even a dark roast should still have *clarity*, not harshness.

***

If you want, I can:

* Give you a **step-by-step ritual** customized for your machine (manual, semi-auto, or fully automatic)

* Optimize for **specific beans** (light vs. dark roast)

* Help you troubleshoot crema, channeling, watery shots, bitter shots—anything

Just tell me your setup and what beans you use.

Me:
Can you tell me the right way if I am using a Delonghi Magnifica S full automat machine with Edeka Bio Esspresso beans?

ChatGPT:
Absolutely — with a **De’Longhi Magnifica S** and **Edeka Bio Espresso beans**, “perfect espresso” means *optimising the machine’s limited controls* rather than chasing café-grade precision. Here’s the right way to get the absolute best out of this specific setup.

***

# **1. Set Your Grinder Correctly (the most important step)**

The Magnifica S has a **built-in burr grinder** with fixed steps.

### **Optimal range for espresso:**

**Setting 2–3** (counting from the finest side)

**How to adjust correctly:**

* Only change the grinder **while the machine is grinding** (to avoid damage).

* Reduce one step at a time → run 2–3 shots → taste → adjust again.

**Why:**\
These machines grind a bit coarser than café grinders, so you compensate by using the machine’s *lowest feasible grind setting*.

***

# **2. Aroma (Strength) Setting**

Use **2 or 3 beans** (medium-high strength).

This tells the machine to **dose more coffee**, which is crucial because automatic machines underdose by default.

***

# **3. Amount of Water (the espresso volume)**

Set the espresso button to **30–35 ml**.

On a super-automatic machine, controlling volume is how you approximate the correct 1:2 ratio.

* Less water = richer, sweeter, more syrupy

* More water = thinner, bitter

30–35 ml is the sweet spot.

***

# **4. Temperature Setting**

Set to **HIGH**.

Why:\
Automatic machines lose heat faster than commercial machines. High temp brings out sweetness and reduces sourness, especially with organic beans.

***

# **5. Beans: Edeka Bio Espresso**

These beans are:

* Medium-dark, a bit oily

* Designed for fully automatics

* Naturally chocolatey, mild, low acidity

**What this means for tuning:**

* Finer grind works well

* Higher temperature is ideal

* Keep the espresso short (don’t pull 60 ml singles — they go bitter fast)

***

# **6. Maintenance That Affects Taste**

This is not optional — these machines are *extremely* sensitive:

### Weekly:

* Rinse brew group

* Clean coffee oil buildup from the chute

### Monthly:

* Use descaler

* Clean the grinder hopper

* Empty dredge + drip tray

Dirty machines = bitter, hollow, and inconsistent espresso.

***

# **7. The Flavour Targets for This Setup**

With this machine + these beans, the “perfect” shot should taste:

* Smooth

* Low acidity

* Mild bitterness, but not burnt

* Chocolatey with a slight nutty finish

* Medium body (Magnifica S can’t produce café-level thickness)

If it tastes *sour* → grind finer or raise water temp\
If it tastes *bitter* → grind coarser or reduce volume to 25–30 ml\
If it tastes *weak* → increase aroma strength and reduce water volume\
If it tastes *burnt* → reduce temperature to medium (rarely needed for this bean)

***

# **Your Ideal Settings Summary**

For **De’Longhi Magnifica S + Edeka Bio Espresso beans:**

* **Grind:** 2–3 (fine)

* **Aroma strength:** 2–3 beans

* **Water volume:** 30–35 ml

* **Temperature:** High

* **Maintenance:** Weekly clean, monthly descale

***

If you want, I can give you a **“dial-in ritual”** for your first three coffees that guarantees you land on the perfect flavour within 5 minutes.


Me:
Yes, please!

ChatGPT:
Perfect — here’s a **dial-in ritual specifically for the De’Longhi Magnifica S + Edeka Bio Espresso beans**, optimized to get you to the best possible espresso in *three coffees or less*.

This is simple, fast, and 100% adapted to what your machine can actually control.

***

# **THE 5-MINUTE DIAL-IN RITUAL**

## **Before you start**

* Make sure the machine is **heated for at least 5 minutes**

* Use **fresh beans** (not older than 4–6 weeks after roasting)

* Empty drip tray + grounds bin so we’re not guessing incorrectly

***

# **☕ Shot 1 — The Baseline Shot (no changes yet)**

### **Your starting settings:**

* Grind: **3**

* Aroma: **2 beans**

* Volume: **30 ml**

* Temp: **High**

### Pull the shot and taste:

### **A) If it tastes slightly sour, thin, or acidic → it’s under-extracted**

Do this on Shot 2:

* Turn grinder to **2** (finer) *while it’s grinding*

* Keep everything else the same

### **B) If it tastes bitter, dry, or sharp → it’s over-extracted**

Do this on Shot 2:

* Keep grind at 3

* Reduce water to **25 ml**

### **C) If it tastes weak or watery (the most common with this machine)**

Do this on Shot 2:

* Increase aroma to **3 beans**

* Keep grind at 3

* Keep 30 ml water

If the shot tastes **balanced, chocolatey, smooth**, you already won.\
But let’s optimize further.

***

# **☕ Shot 2 — The Adjustment Shot**

Based on what you tasted:

### If you used **finer grind (to 2)**:

* Pull another 30 ml shot

* Taste again:

  * If more sweetness + body → perfect

  * If bitterness appears → go back to grind 3

### If you used **less water (25 ml)**:

* Taste again:

  * If flavours are richer + less bitter → keep 25 ml

  * If it’s too concentrated → go to 28 ml

### If you **increased aroma (3 beans)**:

* Taste again:

  * If crema improves + shot feels fuller → keep it

  * If it becomes harsh → return to 2 beans

***

# **☕ Shot 3 — Final Optimization (this locks your settings)**

This is where you secure the **best combination**.

### Use this logic:

**If Shot 2 was nearly perfect but missing sweetness → return to grind 3 + keep 30 ml**\
**If Shot 2 was tasty but slightly thin → 2 beans → 3 beans**\
**If Shot 2 was good but slightly bitter → reduce to 28 ml**\
**If Shot 2 was close but sour → ensure temp = High and grind = 2**

After Shot 3, you’ll have your final profile.

***

# **🎯 EXPECTED FINAL SETTINGS (most common perfect combo)**

For your setup (Magnifica S + Edeka Bio Espresso beans), the 90% success profile is:

* **Grind: 2**

* **Aroma: 3 beans**

* **Volume: 28–30 ml**

* **Temperature: High**

This gives:

* Chocolatey notes

* Low acidity

* Clean finish

* Nice crema

* No bitterness

* Smooth mouthfeel

***

# **If you want, I can help you diagnose the taste of your first real shot**

If you describe **what Shot 1 tasted like**, I’ll tell you *exactly* which path to take on Shot 2 and Shot 3 — no guessing.
