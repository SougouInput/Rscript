#!/usr/bin/env python
# -*- coding: utf-8 -*-
#[usage]:filterN.py [N_num] [fastq1] [fastq2]
import sys
import gzip

N_num=sys.argv[1]
fastq1=sys.argv[2]
fastq2=sys.argv[3]
N_num=int(N_num)
list1=[]
list11=[]
list2=[]
list22=[]
count1=0
count2=0

with gzip.open(fastq1) as f1:
    for line1 in f1:
       list1.append(line1)
       count1=count1+1

       if count1==2:
           num=0
           for i1 in line1:
               if i1=='N':
                   num+=1
           if num>N_num:
               list1.clear()
           #print(num)
       if count1==4:
           if len(list1)==4:
               list11.extend(list1)
           count1=0
           list1=[]

with gzip.open('filterN_'+fastq1,'w') as f2:
    for i1 in list11:
        f2.write(i1)

with gzip.open(fastq2) as f2:
    for line2 in f2:
       list2.append(line2)
       count2=count2+1

       if count2==2:
           num=0
           for i2 in line2:
               if i2=='N':
                   num+=1
           if num>N_num:
               list2.clear()
           #print(num)
       if count2==4:
           if len(list2)==4:
               list22.extend(list1)
           count2=0
           list2=[]

with gzip.open('filterN_'+fastq2,'w') as f2:
    for i2 in list22:
        f2.write(i2)

