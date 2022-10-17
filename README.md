# reward_memories_influence_learning

This repository contains the code required to reproduce the data visualizations and analyses reported in <b><i>Reward-Motivated Memories Influence New Learning Across Development</i></b>.

## Tasks Administered

In order to examine the influence of prior reward associations on new learning, participants first completed a Motivated Encoding Task. Twenty-four hours later, they completed Memory Retrieval Tests followed by a Learning Task with three types of stimulus pairs (previously high-reward, previously low-reward, and novel), and a Test Phase with all possible combinations of stimuli from the Learning Task.

## Data

Data for <i>N</i> = 89 children, adolescent, and adult participants are stored in the <b><i>data</i></b> directory:

<b>ProcessedDemographicData.csv</b> contains participants' demographic information.

<i>subID</i>: subject ID numbers, as strings

<i>subid</i>: subject ID numbers, as integers

<i>Gender</i>:sex-assigned-at-birth (0 denotes males, 1 denotes females)

<i>ExactAge</i>: age in years

<i>AgeGroup</i>: age in bins (1 denotes adults ages 18-25 years, 2 denotes adolescents ages 13-17 years, 3 denotes children ages 8-12 years)

<i>Race</i>: self-identified race

<i>Ethnicity</i>: self-identified ethnicity

<b>ProcessedLearningData.csv</b> contains participants' choices during the Learning Task.

<b>ProcessedMemoryData.csv</b> contains participants' memory performance from the Memory Retrieval Tests.

<b>ProcessedTestData.csv</b> contains participants' choices during the Test Phase.

## Scripts

The analysis code is stored in the <b><i>scripts</i></b> directory:

<b>MotER_Learning_PlotFormatting.R</b> includes common plotting variables; this script gets called by the .Rmd file below.

<b>MotER_Learning.Rmd</b> reproduces the data visualizations and analyses; this script relies on the .R file above, creates the .html file below, and calls .rda objects from their subdirectory.

<b>MotER_Learning.html</b> presents the data visualization and analysis outputs, as specified in the .Rmd file above.

<b><i>rda_files</i></b> stores fitted linear mixed-effects model outputs as .rda objects, corresponding to the R and package versions the authors used in their analyses.

## Figures

The data visualizations and analyses, summarized in .png plots and .html tables, are stored in the <b><i>figures</i></b> directory.

## R and Key Package Versions

Data processing and analyses were conducted in R version 3.6.2 (R Core Team, 2019). Linear mixed-effects models were run using the “glmer” function in the “lme4” package (version 1.1-23; (Bates et al. 2014)). 

Bates D, Maechler M, Bolker B, Walker S, Others. 2014. lme4: Linear mixed-effects models using Eigen and S4. R package version 1.1-7.

R Core Team (2019). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/.

## Contact

If you have any questions about the data visualizations or analyses, please contact Camille Phaneuf (cphaneuf@g.harvard.edu) or Alexandra Cohen (ali.cohen@nyu.edu). This study was conducted in the Hartley Lab at New York University (https://www.hartleylab.org/).
