---
layout: post
title:  "Getting into Neural Nets"
date:   2021-11-04
visible: true
show_comments: true
---
The sound of a topic can make it very menacing. Just try to say _**Neuronal Network**_ out loud...

That term sounds like a group of 5-digit-IQ'ed genius professors figured out how the actual human brain works, and now we can simulate it. I seem to remember my high school biology classes covering neurons to some degree. _If we learn about it in high school, then it must've been fully figured out, right?_

Well, in my 4 month journey of getting into _Neural Networks_ for my bachelor's thesis, I was quite surprised about how some of my initial misconceptions were quickly dispelled. In this post I want to document this experience and what I take out of it.

## 1. They lie to us!

The name is a lie! The first thing I did for research is watching the [3blue1brown video][3b1b-vid]. And guess what? There is no simulation of neuron membrane voltages. There is no modelling of real biological synapses. There's not even a "left-brain, right-brain" kind of architecture.

<p align = "center"><img src = "https://imgs.xkcd.com/comics/machine_learning.png"></p><p align = "center">
if you get into ML, you will inevitably see this xqcd
</p>

All I see is matrix multiplication and gradient descent, I thought neural nets are way cooler than that. I feel betrayed and it broke my heart.

## 2. Smart people have done most of the work already!

As soon as I recovered from a heart broken, I quickly realized that the barrier of entry for neural networks is surprisingly low. [Tensorflow][tf] and [pytorch][pytorch] - both are popular libraries that basically makes writing code to use neural nets super easy.

They figured out efficient matrix multiplication. A good working syntax for tensors. They implemented all the things you would find in your _Introduction to Deep Learning_ course, like **LSTM cells**, the **Adam optimizer**, **Regularization**, **Dropout**, and many more...

Now, as end-users, we only need to learn how to **load and augment** our dataset, **define our model**, and **train** the model. Check out this python code that does exactly that with tensorflow:

First, importing everything you need.
{% highlight python %}
import tensorflow as tf
import tensorflow_datasets as tfds
{% endhighlight %}

Yep, that's all the libraries you need. Then, we gotta load our dataset...

{% highlight python %}
# Loading dataset
ds = tfds.load( 'mnist', split='train', as_supervised=True )
# Batching dataset together into 128 big batches
ds = ds.batch(128)
{% endhighlight %}

Cool! We have loaded the [mnist dataset](https://deepai.org/dataset/mnist) in essentially two lines of code. Let's define our model...

{% highlight python %}
# Defining model
model = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(input_shape=(28, 28)),
  tf.keras.layers.Dense(128, activation='relu'),
  tf.keras.layers.Dense(10),
  tf.keras.layers.Softmax(),
])
# Defining optimizer
model.compile(
    optimizer="adam",
    loss="sparse_categorical_crossentropy",
    metrics=["sparse_categorical_accuracy"],
)
{% endhighlight %}

With `tf.keras.models.Sequential` we have defined a simple feed-forwad neural network with 128 hidden neurons and 10 output neurons (with a softmax layer applied at the end). By using `model.compile` we define which additional parameter to train the model. Actually training the model is just a simple function call...

{% highlight python %}
model.fit( ds, epochs=6 )
{% endhighlight %}

...and we are done! That took literally only five function calls. Congratulations, you can pat yourself in the back now because you just did Deep Learning.

_(This code works but is useless because I skipped a lot of meaningful boilerplate. Check the official [tensorflow keras example](https://www.tensorflow.org/datasets/keras_example) for more details)_

## 3. Domain knowledge is very valuable

Because the barrier of entry is so low, it seems the main target audience for neural networks are non-IT people. A chemical-engineering friend of mine also used Deep Learning for her bachelor's thesis. Linguist friends tell me how their colleagues are using NLP models. The [AI focused hackathon][tumai] of my university advertises itself for requiring "no programming skill".

This only makes sense if I think about it. You won't be able to create a neural network-based system for speech recognition, if you have exactly no idea about signal processing. The decision on which data to use is key to a successfull model training. This would explain why Deep Learning is so popular, **it reaches a wide target audience**.

## 4. Okay, okay, but what actually is intelligence?

It seems the word intelligence is used kinda loosely. Other than making me feel smart, it's interesting to think about what we informally consider intelligence. This is something I got from twitter: _Does Artificial General Intelligence really lie at the bottom of gradient descent?_

When [GPT-3][gpt3] was trending on twitter, a lot of [very interesting applications][gpt3-apps] were shared that seemed to require some form of intelligence. It was exciting and I personally never seen NLP to that level before.

<div align="center">
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/PqbB07n_uQ4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

Learning about neural networks the first time you will realize it is purely a mathematical optimization problem. In the end, we are left with a function, an input, and an output.

Maybe this is what intelligence is - We receive our perception, short-term, and long-term memory at each timestep and output the next thoughts to occupy our minds with the next set of actuator commands for our muscles and pores. We might also add that this function is fuzzy and non-deterministic to account for randomness. Using the GPT-3 interface is very similar to this. But having experimented with it before, I realized _(maybe something really obvious)_ that GPT-3 is not an AGI, in a way AGI's are depicted in the movies. In fact, we are farther from hollywood AI than the 12-year old me would have expected.

This is just the rambling of a green-horn computer science student that just learned about Deep Learning. Alan Turing, a way more smarter person, [thought about this question more than 70 years ago][turing]. Going into Deep Learning I didn't realize how ambiguous the term "Intelligence" can be...

## 5. The community seems nice

The Deep Learning community is quite welcoming.

The semester before my bachelor's thesis I was trying to go into cyber security. Specifically, I tried to get into the hardening of the linux kernel by using virtualization techniques in a seminar. I was a beginner to kernel-level development then too as I was a complete beginner to deep learning. By contrast, I could find overwhelmingly more accessible learning resources for deep learning than for virtualization of the linux memory allocator.

Many of my fellow students are getting into Deep Learning. Channels like [3blue1brown][3b1b-vid] make it easy to get into the math. Big figures like [Yann LeCun][ylecun] have active twitter pages you can follow. Youtube channels like [Two Minute Papers][2mp] or [Yannic Kilcher][ykilcher] make it quite easy to learn about some higher level concepts that I might have been too overwhelmed learning by myself. [Tensorflow][tf] and [pytorch][pytorch] are backed by Facebook and Google, so you can be damn sure there's good documentation for it.

My verdic: The community seems nice.

## Closing Words

I am by no means an expert on neural networks yet but this short but fruitful journey has opened the door to a big world. I hope this blog post helps anyone who was also a bit hesitant to dive into this.

### Some other stuff

I currently kinda try to get into blogging and stuff, so any feedback is welcome, just <a href = "mailto: prak.renatin@tum.de">contact me</a>

[3b1b-vid]: https://www.youtube.com/watch?v=aircAruvnKk
[tumai]: https://www.tum-ai.com/makeathon.html
[tf]: https://www.tensorflow.org/
[pytorch]: https://pytorch.org/
[gpt3]: https://openai.com/blog/gpt-3-apps/
[gpt3-apps]: https://gpt3.website/
[turing]: https://www.csee.umbc.edu/courses/471/papers/turing.pdf
[ylecun]: https://twitter.com/ylecun
[2mp]: https://www.youtube.com/c/K%C3%A1rolyZsolnai
[ykilcher]: https://www.youtube.com/c/YannicKilcher
