# Overview
An analysis on recent hate crimes in Toronto via https://open.toronto.ca/dataset/hate-crimes-open-data/ from 2018 until most recently, 2024. 

# File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from X.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted models. 
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.

# Statement on LLM usage
Aspects of the code were written with the help of ChatGpt. It is available in other/llms/usage.txt.


### Go/No-Go Checks:
1. **Go/No-Go #1: R is cited**
   - [ ] Is R mentioned and properly referred to in the paper?
   - [ ] Is R included in the reference list?  
   If **no** to either, the paper gets 0 points.
   
2. **Go/No-Go #2: LLM usage is documented**
   - [ ] Does the README contain a paragraph or bullet point about whether LLMs or autocomplete tools like Copilot/Chat-GPT were used?
   - [ ] If tools like Chat-GPT were used, is the entire chat included in a text file?
   If **no**, the paper gets 0 points.

---

### Main Content:

3. **Title**
   - [ ] Does the title clearly explain the topic and story, including the conclusion?  
     *Avoid generic titles like "Paper X".*

4. **Author, Date, and Repo**
   - [ ] Are the author’s name and unambiguous submission date included?
   - [ ] Is there a link to a GitHub repo with the code/data? (e.g., "Code and data available at: LINK")

5. **Abstract**
   - [ ] Does the abstract clearly explain:
     - What was done?
     - What was found?
     - Why it matters?  
     *(Ideally, 4 sentences that communicate to non-specialists.)*

6. **Introduction**
   - [ ] Does the introduction cover:
     - Broader context?
     - Paper’s purpose?
     - Gap it addresses?
     - What was done and what was found?
     - Why it is important?
     - Structure of the paper?  
     *(3–4 paragraphs, or about 10% of the paper)*

7. **Data**
   - [ ] Is the dataset explained with:
     - Broader context?
     - Full discussion of variables?
     - Explanation of similar datasets and why they weren’t used?
     - Mention of high-level data cleaning?
   - [ ] Are there graphs, tables, and summary statistics?
   - [ ] Are relationships between variables discussed?  
     *(Appendices may be used if necessary.)*

8. **Measurement**
   - [ ] Is there a thorough discussion of measurement related to the dataset?

9. **Cross-References**
   - [ ] Are figures, tables, and equations numbered and cross-referenced in the text?

10. **Prose**
    - [ ] Is the text free of typos, spelling, and grammar errors?
    - [ ] Is the writing coherent, concise, and clear?

11. **Graphs/Tables**
    - [ ] Are graphs/tables well-formatted, clear, and digestible?
    - [ ] Are they self-contained with captions and appropriate colors/sizes?

12. **Referencing**
    - [ ] Are all data, software, literature, etc., cited in-text and included in the reference list using BibTeX?

13. **Commits**
    - [ ] Are there meaningful and multiple commit messages in the repo?

14. **Sketches**
    - [ ] Are sketches included, labeled, and of high quality in the repo?

15. **Simulation**
    - [ ] Is the script well-commented and structured?
    - [ ] Are all variables appropriately simulated?

16. **Tests**
    - [ ] Are data and code tests included?

17. **Reproducibility**
    - [ ] Is everything reproducible?
    - [ ] Is the README detailed, and all code documented?
    - [ ] Is R used to handle data and create plots/analysis?
    - [ ] Are seeds and appropriate code comments used?

18. **Code Style**
    - [ ] Is code style consistent (e.g., through `styler` or `lintr` tools)?

19. **General Excellence**
    - [ ] Does the submission excel in an unexpected way?

---
