# reward_memories_influence_learning

This repository contains the code required to reproduce the data visualizations and analyses reported in [Reward-Motivated Memories Influence New Learning Across Development](http://learnmem.cshlp.org/content/29/11/421).

## Tasks Administered

In order to examine the influence of prior reward associations on new learning, participants first completed a Motivated Encoding Task. Twenty-four hours later, they completed Memory Retrieval Tests followed by a Learning Task with three types of stimulus pairs (previously high-reward, previously low-reward, and novel), and a Test Phase with all possible combinations of stimuli from the Learning Task.

## Data

Data for <i>N</i> = 89 children, adolescent, and adult participants are stored in the <b><i>data</i></b> directory:

Participants' information contained across <b>multiple .csv files</b>.

* <i>subID</i> - participant ID numbers, as strings

* <i>subid</i> - participant ID numbers, as integers

* <i>ExactAge</i> - age in years

* <i>AgeGroup</i> - age in bins (1 = adults ages 18-25 years, 2 = adolescents ages 13-17 years, 3 = children ages 8-12 years)

<b>ProcessedDemographicData.csv</b> contains participants' demographic information.

* <i>Gender</i> - sex-assigned-at-birth (0 = males, 1 = females)

* <i>Race</i> - self-identified race

* <i>Ethnicity</i> - self-identified ethnicity

<b>ProcessedLearningData.csv</b> contains participants' choices during the Learning Task.

* <i>block</i> - numbered block of 30 trials (1 = first 30 trials, 2 = second 30 trials, 3 = third 30 trials, 4 = fourth 30 trials, 5 = fifth 30 trials, 6 = last 30 trials)

* <i>rt</i> - reaction time in ms

* <i>RewardCat</i> - whether faces or places were the high-reward category for the participant (e = faces, o = places); corresponds to the parity of subid

* <i>correctresponses</i> - accuracy of the trial-wise response (0 = incorrect, 1 = correct); defined as choosing the relatively higher reinforced card deck in each pair

* <i>StimRewardType</i> - trial type (high = trial with a pair of previously high-reward stimuli, low = trial with a pair of previously low-reward stimuli, new = trial with novel stimuli)

* <i>Instance</i> - presentation order of each trial type (e.g., "the second time a low trial type was seen by the participant")

<b>ProcessedMemoryData.csv</b> contains participants' memory performance from the Memory Retrieval Tests.

* <i>HighRewSourceMemBenefitDay2</i> - index of high-reward memory prioritization

<b>ProcessedTestData.csv</b> contains participants' choices during the Test Phase.

* <i>trialtype</i> - paired combination of the 6 card decks

* <i>RewardCat</i> - whether faces or places were the high-reward category for the participant (face = faces, scene = places); corresponds to the parity of subid

* <i>choice</i> - trial-wise card deck choice from the 2 possible options

* <i>HH</i> - card deck corresponding to the participant's previously high-reward stimulus that was relatively higher reinforced during learning

* <i>HL</i> - card deck corresponding to the participant's previously high-reward stimulus that was relatively lower reinforced during learning

* <i>LH</i> - card deck corresponding to the participant's previously low-reward stimulus that was relatively higher reinforced during learning

* <i>LL</i> - card deck corresponding to the participant's previously low-reward stimulus that was relatively lower reinforced during learning

* <i>NH</i> - card deck corresponding to the participant's novel stimulus that was relatively higher reinforced during learning

* <i>NL</i> - card deck corresponding to the participant's novel stimulus that was relatively lower reinforced during learning

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
