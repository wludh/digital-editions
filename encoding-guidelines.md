---
layout: default
title: Encoding Guidelines
---

## Structure

### Default document structure

```
<TEI xmlns="http://www.tei-c.org/ns/1.0">
 <teiHeader>
<!-- ... -->
 </teiHeader>
 <standOff>
    <listPerson></listPerson>
    <listPlace></listPlace>
 </standOff>
 <text>
  <front>
<!-- front matter of copy text, if any, goes here -->
  </front>
  <body>
<!-- body of copy text goes here -->
  </body>
  <back>
<!-- back matter of copy text, if any, goes here -->
  </back>
 </text>
</TEI>

```

### Page Numbers

Encode page number of original text as printed. This is a empty element. It can occur both within a paragraph or div, or outside of it, wherever the break in your document occurs. 

`<pb n="67"/>`

### Drop Caps

Do not encode in TEI. Prof. Brooks could style with CSS if she finds the time. 

### Italics 

When the italics are referencing text in another language, use:  

`<foreign xml:lang="it">influenza di freddo</foreign>`

When the italics are referencing a book or newspaper's title:

`<bibl>Tufte's <title>Envisioning Information</title></bibl>`

### Headings/sections

Sections and subsections should be handled by nesting divs with the `@type` attribute and the `@n` attribute. 

```
	<div type="section" n="1">
		<div type="subsection" n="1">
		</div>
	</div>
```

## Content

### Abbreviations

Abbreviations should be encoded, along with the expansion or full text of the abbreviation when it comes to organizations. Initials and titles do not need to be expanded. 

```
<choice>
 <expan>World Wide Web Consortium</expan>
 <abbr>W3C</abbr>
</choice>
```

`<abbr>Mr.</abbr>`

### Numbers

```
<num value="33">xxxiii</num>
<num type="cardinal" value="21">twenty-one</num>
<num type="percentage" value="10">ten percent</num>
<num type="percentage" value="10">10%</num>
<num type="ordinal" value="5">5th</num>
<num type="fraction" value="0.5">one half</num>
```

### Dates

```
<date when="1980-02-12">12/2/1980</date>

```

### People

```
<persName id="#RHS-0001"> </persName>
```

After your teiHeader, include of a List of Persons in the `<standoff>` tag.

```
<standOff>
 <listPerson>
  <person xml:id="RHS-0001">
   <persName>Adam Schiff</persName>
   <occupation>District Attorney</occupation>
   <note>District Attorney for <placeName>Manhattan</placeName> in
       seasons 1 to 10 of <title>Law and Order</title>.</note>
  </person>
  <person xml:id="RHS-0002">
   <persName>Mike Logan</persName>
   <note>
    <choice>
     <abbr>NYPD</abbr>
     <expan>New York Police
           Department</expan>
    </choice> Detective regularly appearing in
       seasons 1 to 5 of <title>Law and Order</title> and seasons 5 to 7
       of <title>Law and Order: Criminal Intent</title>.</note>
  </person>
```

### Places

Encode place names in the text like this: 
`<placeName id="#LEX1">Lexington, Virginia</placeName>`

In the `standOff` section between the `teiHeader` and `text`. 

```
<place xml:id="LEX1" type="city">
 <placeName notBefore="1400">Lyon</placeName>
 <placeName notAfter="0640">Lugdunum</placeName>
 <location>
  <geo>37.784039624349134, -79.4452526675777</geo>
 </location>
</place>
```

### Organizations

`<org>Kappa Alpha</org>`


### Quotations

`<q>Here is a thing someone is saying.</q>`

`<soCalled></soCalled>`

### Images 

```
figure>
 <graphic url="fig1.png"/>
 <head>Figure One: The View from the Bridge</head>
 <figDesc>A Whistleresque view showing four or five sailing boats in the foreground, and a
   series of buoys strung out between them.</figDesc>
</figure>
```

### Graphs

Treat like images. 

### Horizontal Rule



## Metadata


### Author bio

```
<text>
	<front>
		Author bio from first page
	</front>
	<body>
		Blah blah
	</body>
</text>
```

## Notes and Annotations

### Author's notes



### Student Annotations

<note></note>

### References