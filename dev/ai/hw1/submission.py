import collections
import math
import itertools
############################################################
# Problem 3a

def computeMaxWordLength(text):
    """
    Given a string |text|, return the longest word in |text|.  If there are
    ties, choose the word that comes latest in the alphabet.
    A word is defined by a maximal sequence of characters without whitespaces.
    You might find max() and list comprehensions handy here.
    """
    # BEGIN_YOUR_CODE (around 1 line of code expected)
    return max(text.split() , key=len)
    # END_YOUR_CODE

############################################################
# Problem 3b

def manhattanDistance(loc1, loc2):
    """
    Return the Manhattan distance between two locations, where the locations
    are pairs of numbers (e.g., (3, 5)).
    """
    # BEGIN_YOUR_CODE (around 1 line of code expected)
    return math.sqrt(math.pow(loc1[0]-loc2[0], 2)+math.pow(loc1[1]-loc2[1],2)); 
    # END_YOUR_CODE

############################################################
# Problem 3c

def mutateSentences(sentence):
    """
    High-level idea: generate sentences similar to a given sentence.
    Given a sentence (sequence of words), return a list of all possible
    alternative sentences of the same length, where each pair of adjacent words
    also occurs in the original sentence.  Notes:
    - The order of the sentences you output doesn't matter.
    - You must not output duplicates.
    - Your generated sentence can use a word in the original sentence more than
      once.
    """
    # BEGIN_YOUR_CODE (around 20 lines of code expected)
    words = sentence.split()
    return list(itertools.permutations(words, len(words))) 
    # END_YOUR_CODE

############################################################
# Problem 3d

def sparseVectorDotProduct(v1, v2):
    """
    Given two sparse vectors |v1| and |v2|, each represented as Counters, return
    their dot product.
    You might find it useful to use sum() and a list comprehension.
    This function will be useful later for linear classifiers.
    """
    # BEGIN_YOUR_CODE (around 5 lines of code expected)
    sum = 0
    for i in range(0, len(v1)):
        sum += v1[i]*v2[i]
    return sum

    # END_YOUR_CODE

############################################################
# Problem 3e

def incrementSparseVector(v1, scale, v2):
    """
    Given two sparse vectors |v1| and |v2|, perform v1 += scale * v2.
    This function will be useful later for linear classifiers.
    """
    # BEGIN_YOUR_CODE (around 2 lines of code expected)
    returnArray = []
    for i in range(0, len(v1)):
        returnArray.append(v1[i] + scale * v2[i])
    return returnArray
    # END_YOUR_CODE

############################################################
# Problem 3f

def computeMostFrequentWord(text):
    """
    Splits the string |text| by whitespace and returns two things as a pair: 
        the set of words that occur the maximum number of times, and
	their count, i.e.
	(set of words that occur the most number of times, that maximum number/count)
    You might find it useful to use collections.Counter().
    """
    # BEGIN_YOUR_CODE (around 5 lines of code expected)
    words = text.split()
    common = collections.Counter(words).most_common()
    maximum = 0
    for count in common:
        if count[1] > maximum:
            maximum = count[1]
    returnArray = []
    for element in common:
        if element[1] == maximum:
            returnArray.append(element) 
    return returnArray
        
    # END_YOUR_CODE

############################################################
# Problem 3g

def computeLongestPalindrome(text):
    """
    A palindrome is a string that is equal to its reverse (e.g., 'ana').
    Compute the length of the longest palindrome that can be obtained by deleting
    letters from |text|.
    For example: the longest palindrome in 'animal' is 'ama'.
    Your algorithm should run in O(len(text)^2) time.
    You should first define a recurrence before you start coding.
    """
    # BEGIN_YOUR_CODE (around 20 lines of code expected)
    raise Exception("Not implemented yet")
    # END_YOUR_CODE

print mutateSentences("hello my name is justin")
