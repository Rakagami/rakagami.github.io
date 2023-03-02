---
layout: post
title:  "Can Computers Think? - Essay"
date:   2023-03-02
visible: true
categories: jekyll update
show_comments: true
---

## Preface

I'm currently enrolled in an Informatics M.Sc. program at [TUM](https://www.in.tum.de/en/in/for-prospective-students/masters-programs/informatics/). It's now almost been two years since I applied for this program, I kinda wanted to look back on [the essay](https://www.in.tum.de/en/in/fuer-studieninteressierte/bewerbung/masterstudiengaenge/informatics/#c4052) we had to write for the application. We live in an interesting time, where there is a difference between a student essay from 2021 and 2023 in the fact that there now exists [LLM](https://blogs.nvidia.com/blog/2023/01/26/what-are-large-language-models-used-for/) tools like ChatGPT to write stuff for you. _Stuff like [gpt3 already existed back](https://openai.com/blog/gpt-3-apps) then, but the [barriers of entry to use those models have clearly plummeted down](https://www.youtube.com/watch?v=Sqa8Zo2XWc4)_ Commomerating this nostalgia trip, I'll be reposting my essay into this blog.

Even though I don't think I'm a particularly good writer (yet?), I got accepted for the program. After some minor tweaking to fit this browser format, I hereby present a completely human-made essay:

---
---

## Can Computers Think?

### Intro

I am in my last online tutorial after a long day of online lectures, not the most exciting subject but important enough for more than a handful attending students. I can't see the faces of the other attendees but I can imagine a wall of tired screen-lit faces waiting for the presenter to show the next slides - assuming they are even paying attention. The presentation is being halted because the presenter wanted to show new slides from another file.
What he doesn't know is that the software only supports pdf and not powerpoint. Unfortunately, this will take a few minutes to figure out and five more for him to fix. The phrase "stupid thing!" slips out of his mouth before finally resuming the tutorial. The 'thing' he is referring to could be either the computer or software. Don't we all know that feeling?
When we are tired and unmotivated to troubleshoot, that is when the desire for computers to think for themselves is the strongest. Just think like humans! Can't computers do the same thing as humans? Or taking a step back - Can computers think?

### Let's take a few steps back

The roots of this question can be traced back to the father of theoretical computer science himself, Alan Turing. Like many others in his time, he did not have any luxury to complain about the shortcomings of computers. The prospect of machines being as intelligent as humans filled discussions with more fascination rather than impatience. However, the fundamental approach to thinking about this question has stayed the same. Discussing what it means to think is to inspect the origin of thought and how it behaves. To answer 'Yes' or 'No', we need some form of definition for thinking. Following [Stuart Russel's and Peter Norvig's example][russell2002artificial], we will differentiate between human thinking and rational thinking.

### Thinking like a computer

Seeing the construction of a computer just as another utility tool for humanity, we can view the concept of 'thinking' in a more general, some would say mathematical, domain. Rather than restricting the concept of thinking to a human discipline, we can generalize 'thinking' as 'solving a problem'. This brings us to the concept of rational thinking. Given a proposed problem, finding an optimal solution to that problem would be analogous to 'thinking' itself. Modern applications like recommender systems solving the problem of 'What is this person interested in given past interests' open a huge industry of internet advertisement. Modern language models like [GPT-3][brown2020language] are trying to solve the problem of 'Given the input sequence of words, how would we complete the text'. Even more complex problems like playing human games such as Chess or GO has been [proven to be doable by computers][silver2016mastering]. Methods such as [Backpropagation][backprop], which is the backbone of Machine Learning with Neural Network, shows that learning is just an optimization problem of a multi-dimensional function. Now, we have reasons to believe computers can indeed think - and that very well.

### Thinking like a human

Intuitively however, thinking is more thought of as a human property. Any perception, reflection, decision-making that happens in our human self can be called thinking. In such a way, we can define thinking as performing the work of a human brain which implies 'thinking' also means 'human thinking'. To compare the functionality of a brain and a computer, there are two different approaches to take, 'intrinsic' and 'end-to-end'. I will now go into more detail on each comparison.

What I call intrinsic comparison means that we can measure how similar a computer thinks to a human by examining how similar the underlying structure is. This would require knowledge of the human brain. Neuroscience and biology has provided us with the structure of the nervous system by identifying parts like the hypothalamus or the cerebral cortex. To zoom further in, models like the [Hodgkin-Huxley model][hhm] describe how action potentials in neurons are propagated. A comparison with computer in this way means that we are more interested in the implementation of the computer program rather than the performance of it. 

<p align = "center"><img src = "https://www.researchgate.net/publication/328206919/figure/fig1/AS:680354205675520@1539220491312/A-Hodgkin-Huxley-model-modified-from-Wikipedia-B-Changes-of-sodium-conductance.png"></p><p align = "center">
The Hodgkin-Huxley model describes how action potentials in neurons are initiated and propagated. This concept is abstracted in traditional Neural Networks in form of activation functions.
</p>

### Thinking as a behaviour

 If we are more interested in the behaviour of an entity to judge whether or not it can think then we can do an end-to-end approach. This is done by comparing how a human acts with how a computer acts without being bothered by the specifics of the implementation. The problem in this approach is that we can't enumerate all the capabilities of the brain and just go through each point in the list to see whether computers can do the same, like going through a check list in a car safety examination. Any attempt to construct such an enumeration would lead us to a difficult path in defining each and every way a human can be creative. To circumvent this problem, we can rely on human intuition. The only judge whether or not something can think humanly is therefore another human being, which is the basic assumption of the [Turing Test][turingtest].

<p align = "center"><img src = "https://imgs.xkcd.com/comics/turing_test.png"></p><p align = "center">
obligatory xkcd
</p>

 Through a series of questions the computer then answers, a computer can pass if a human interrogator can't distinguish between the responses of the computer or another human. Giving the term 'human intuition' more rigidity, an interrogator can look for the following properties: Can the computer communicate in natural language? Does it store given knowledge? Can it use given knowledge to answer questions and draw new conclusions? Can it adapt to new circumstance to detect and extrapolate patterns? A computer which passes the Turing Test is able to have the appearance of human intelligence, therefore also human thinking.

### It's been half a century. Has anything changed?

Many of the examinations on what thinking means has already been done in the past. The Dartmouth College Summer Workshop that seems to have kick-started the field of artificial intelligence is now more than half-a-century ago. However, the context around whether computers can think has changed quite a bit since Turing proposed it. Where has this led us?
Considering the countless Hollywood movies portraying AIs and new startups advertising with words like 'smart', 'AI', 'Neural Network', the general populace might be quite comfortable with the idea of a thinking computer. [This was also predicted by Turing][turing1950]. Unfortunately, there has been a dangerous misunderstanding revolving around this idea. The idea of a thinking computer might not be interesting in itself, even Turing called this discourse ['too meaningless to deserve discussion'][turing1950] with the lack of a clear single definition of thinking. It could be the fantasy of artificially creating an intellect which works just like a human that seems to drive the interest along this path. This is reflected in the language researchers use for the developed technology which can appear quite misleading to an uninformed observer. [Current Neural Networks don't work exactly like a real neuronal network of a human][snn]. Machine Learning doesn't imply that computers learn the same way like a child does - in Deep Learning it often just means gradient descent. Even a more dated example like the [General Problem Solver](https://en.wikipedia.org/wiki/General_Problem_Solver) from 1963 used the word 'general' quite loosely. The field of artificial intelligence has survived periods of stagnation what some would call AI Winter. [The cause of which is speculated to be the over-optimistic prognoses and unfulfilled promises for the performance of AI, though the validity of those speculations is also debated](https://ieeexplore.ieee.org/document/4475849). Nevertheless, it is never a good idea to oversell a research achievement. It is better to judge it for its capabilities, present benchmark results, realize limitations, and staying away from terms like Artificial General Intelligence or Human Intelligence.

### Concluding my rambling thoughts

It might come to no surprise that this essay won't end with any definite conclusion. It depends on how one defines thinking. As it currently stands, we are far away from human level intelligence. We might not like it, but there is no hyper intelligent home-assistant baby sitter AI for us that can solve all of our problems. If we expect such a program when asking whether computers can think, we can cut this paragraph short just by saying 'No'. However, if we see thinking in a more rational way, meaning problem solving, then we can consider to say 'Yes'. Ultimately, instead of relying on computers with 'human level' intelligence to magically whisk away all of our problems, the grind of researching, developing, and troubleshooting is still ahead of us - And that might be a good thing.

[russell2002artificial]: http://aima.cs.berkeley.edu/
[brown2020language]: https://openai.com/blog/gpt-3-apps
[silver2016mastering]: https://www.nature.com/articles/nature16961
[backprop]: https://deepai.org/machine-learning-glossary-and-terms/backpropagation
[hhm]: https://en.wikipedia.org/wiki/Hodgkin%E2%80%93Huxley_model
[turingtest]: https://www.geeksforgeeks.org/turing-test-artificial-intelligence/
[turing1950]: https://en.wikipedia.org/wiki/Computing_Machinery_and_Intelligence
[snn]: https://cnvrg.io/spiking-neural-networks/

---
---

So that was the essay. Added some pictures to make it more accessible. To be honest, most of my last blog post can be traced back on this essay. Going into the Master's program I was quite excited to do AI, now I kinda changed direction. But that's a story for another time. Anyways, if for some reason you make it this far, I would be happy to receive a comment. Finger-crossed the comment system is working.
