#lang racket

(provide *ok-standards-list*)

(define *ok-standards-list*
'(

; Oklahoma State Math Standards

 ("OK.PA.N.1"
  "Read, write, compare, classify, and represent real numbers and use them to solve problems in various contexts."
 )
 ("OK.PA.N.1.1"
  "Develop and apply the properties of integer exponents, including the zero exponent rule, to generate equivalent numerical and algebraic expressions."
 )
 ("OK.PA.N.1.2"
  "Express and compare approximations of very large and very small numbers using scientific notation."
 )
 ("OK.PA.N.1.3"
  "Multiply and divide numbers expressed in scientific notation, express the answer in scientific notation."
 )
 ("OK.PA.N.1.4"
  "Classify real numbers as rational or irrational. Explain why the rational number system is closed under addition and multiplication and why the irrational system is not. Explain why the sum of a rational number and an irrational number is irrational; and the product of a non-zero rational number and an irrational number is irrational."
 )
 ("OK.PA.N.1.5"
  "Compare real numbers; locate real numbers on a number line. Identify the square root of a perfect square to 400 or, if it is not a perfect square root, locate it as an irrational number between two consecutive positive integers."
 )
 ("OK.PA.A.1"
  "Understand the concept of function in real-world and mathematical situations, and distinguish between linear and nonlinear functions."
 )
 ("OK.PA.A.1.1"
  "Recognize that a function is a relationship between an independent variable and a dependent variable in which the value of the independent variable determines the value of the dependent variable."
 )
 ("OK.PA.A.1.2"
  "Use linear functions to represent and explain real-world and mathematical situations."
 )
 ("OK.PA.A.1.3"
  "Identify a function as linear if it can be expressed in the form y = mx + b or if its graph is a straight line."
 )
 ("OK.PA.A.2"
  "Recognize linear functions in real-world and mathematical situations; represent linear functions and other functions with tables, verbal descriptions, symbols, and graphs; solve problems involving linear functions and interpret results in the original context."
 )
 ("OK.PA.A.2.1"
  "Represent linear functions with tables, verbal descriptions, symbols, and graphs; translate from one representation to another."
 )
 ("OK.PA.A.2.2"
  "Identify, describe, and analyze linear relationships between two variables."
 )
 ("OK.PA.A.2.3"
  "Identify graphical properties of linear functions including slope and intercepts. Know that the slope equals the rate of change, and that the yintercept is zero when the function represents a proportional relationship."
 )
 ("OK.PA.A.2.4"
  "Predict the effect on the graph of a linear function when the slope or y-intercept changes. Use appropriate tools to examine these effects."
 )
 ("OK.PA.A.2.5"
  "Solve problems involving linear functions and interpret results in the original context."
 )
 ("OK.PA.A.3"
  "Generate equivalent numerical and algebraic expressions and use algebraic properties to evaluate expressions."
 )
 ("OK.PA.A.3.1"
  "Use substitution to simplify and evaluate algebraic expressions."
 )
 ("OK.PA.A.3.2"
  "Justify steps in generating equivalent expressions by identifying the properties used, including the properties of operations (associative, commutative, and distributive laws) and the order of operations, including grouping symbols."
 )
 ("OK.PA.A.4"
  "Represent real-world and mathematical problems using equations and inequalities involving linear expressions. Solve and graph equations and inequalities symbolically and graphically. Interpret solutions in the original context."
 )
 ("OK.PA.A.4.1"
  "Illustrate, write, and solve mathematical and real-world problems using linear equations with one variable with one solution, infinitely many solutions, or no solutions. Interpret solutions in the original context."
 )
 ("OK.PA.A.4.2"
  "Represent, write, solve, and graph problems leading to linear inequalities with one variable in the form px + q > r and px + q < r, where p, q, and r are rational numbers."
 )
 ("OK.PA.A.4.3"
  "Represent real-world situations using equations and inequalities involving one variable."
 )
 ("OK.PA.GM.1"
  "Solve problems involving right triangles using the Pythagorean Theorem."
 )
 ("OK.PA.GM.1.1"
  "Informally justify the Pythagorean Theorem using measurements, diagrams, or dynamic software and use the Pythagorean Theorem to solve problems in two and three dimensions involving right triangles."
 )
 ("OK.PA.GM.1.2"
  "Use the Pythagorean Theorem to find the distance between any two points in a coordinate plane."
 )
 ("OK.PA.GM.2"
  "Calculate surface area and volume of three-dimensional figures."
 )
 ("OK.PA.GM.2.1"
  "Calculate the surface area of a rectangular prism using decomposition or nets. Use appropriate measurements such as cm2."
 )
 ("OK.PA.GM.2.2"
  "Calculate the surface area of a cylinder, in terms of pi and using approximations for pi, using decomposition or nets. Use appropriate measurements such as cm2."
 )
 ("OK.PA.GM.2.3"
  "Develop and use the formulas V = lwh and V = Bh to determine the volume of rectangular prisms. Justify why base area (B) and height (h) are
multiplied to find the volume of a rectangular prism. Use appropriate measurements such as cm3."
 )
 ("OK.PA.GM.2.4"
  "Develop and use the formulas V = pi * r2 * h and V = Bh to determine the volume of right cylinders, in terms of pi and using approximations for pi.
Justify why base area (B) and height (h) are multiplied to find the volume of a right cylinder. Use appropriate measurements such as cm3."
 )
 ("OK.PA.D.1"
  "Display and interpret data in a variety of ways, including using scatterplots and approximate lines of best fit. Use line of best fit and average rate of change to make predictions and draw conclusions about data."
 )
 ("OK.PA.D.1.1"
  "Describe the impact that inserting or deleting a data point has on the mean and the median of a data set. Know how to create data displays using a spreadsheet and use a calculator to examine this impact."
 )
 ("OK.PA.D.1.2"
  "Explain how outliers affect measures of central tendency."
 )
 ("OK.PA.D.1.3"
  "Collect, display and interpret data using scatterplots. Use the shape of the scatterplot to informally estimate a line of best fit, make statements about average rate of change, and make predictions about values not in the original data set. Use appropriate titles, labels and units."
 )
 ("OK.PA.D.2"
  "Calculate experimental probabilities and reason about probabilities to solve real-world and mathematical problems."
 )
 ("OK.PA.D.2.1"
  "Calculate experimental probabilities and represent them as percents, fractions and decimals between 0 and 1 inclusive. Use experimental probabilities to make predictions when actual probabilities are unknown."
 )
 ("OK.PA.D.2.2"
  "Determine how samples are chosen (random, limited, biased) to draw and support conclusions about generalizing a sample to a population."
 )
 ("OK.PA.D.2.3"
  "Compare and contrast dependent and independent events."
 )
 ("OK.MAP.1" 
  "Develop a deep and flexible conceptual understanding."
 )
 ("OK.MAP.2"
  "Develop accurate and appropriate procedural fluency."
 )
 ("OK.MAP.3"
  "Develop strategies for problem solving."
 )
 ("OK.MAP.4"
  "Develop mathematical reasoning."
 )
 ("OK.MAP.5"
  "Develop a productive mathematical disposition."
 )
 ("OK.MAP.6"
  "Develop the ability to make conjectures, model, and generalize."
 )
 ("OK.MAP.7"
  "Develop the ability to communicate mathematically."
 )
 ("OK.A1.N.1"
  "Extend the understanding of number and operations to include square roots and cube roots."
 )
 ("OK.A1.N.1.1"
  "Write square roots and cube roots of monomial algebraic expressions in simplest radical form."
 )
 ("OK.A1.N.1.2"
  "Add, subtract, multiply, and simplify square roots of monomial algebraic expressions and divide square roots of whole numbers, rationalizing
the denominator when necessary."
 )
 ("OK.A1.A.1"
  "Represent and solve mathematical and real-world problems using linear equations, absolute value equations, and systems of equations; interpret solutions in the original context."
 )
 ("OK.A1.A.1.1"
  "Use knowledge of solving equations with rational values to represent and solve mathematical and real-world problems (e.g., angle measures, geometric formulas, science, or statistics) and interpret the solutions in the original context."
 )
 ("OK.A1.A.1.2"
  "Solve absolute value equations and interpret the solutions in the original context."
 )
 ("OK.A1.A.1.3"
  "Analyze and solve real-world and mathematical problems involving systems of linear equations with a maximum of two variables by graphing (may include graphing calculator or other appropriate technology), substitution, and elimination. Interpret the solutions in the original context."
 )
 ("OK.A1.A.2"
  "Represent and solve real-world and mathematical problems using linear inequalities, compound inequalities and systems of linear inequalities; interpret solutions in the original context."
 )
 ("OK.A1.A.2.1"
  "Represent relationships in various contexts with linear inequalities; solve the resulting inequalities, graph on a coordinate plane, and interpret the solutions."
 )
 ("OK.A1.A.2.2"
  "Represent relationships in various contexts with compound and absolute value inequalities and solve the resulting inequalities by graphing and interpreting the solutions on a number line."
 )
 ("OK.A1.A.2.3"
  "Solve systems of linear inequalities with a maximum of two variables; graph and interpret the solutions on a coordinate plane."
 )
 ("OK.A1.A.3"
  "Generate equivalent algebraic expressions and use algebraic properties to evaluate expressions and arithmetic and geometric sequences."
 )
 ("OK.A1.A.3.1"
  "Solve equations involving several variables for one variable in terms of the others."
 )
 ("OK.A1.A.3.2"
  "Simplify polynomial expressions by adding, subtracting, or multiplying."
 )
 ("OK.A1.A.3.3"
  "Factor common monomial factors from polynomial expressions and factor quadratic expressions with a leading coefficient of 1."
 )
 ("OK.A1.A.3.4"
  "Evaluate linear, absolute value, rational, and radical expressions. Include applying a nonstandard operation such as a o b = 2a + b."
 )
 ("OK.A1.A.3.5"
  "Recognize that arithmetic sequences are linear using equations, tables, graphs, and verbal descriptions. Use the pattern, find the next term."
 )
 ("OK.A1.A.3.6"
  "Recognize that geometric sequences are exponential using equations, tables, graphs and verbal descriptions. Given the formula f(x) = a(r)^x, find the next term and define the meaning of a and r within the context of the problem."
 )
 ("OK.A1.A.4"
  "Analyze mathematical change involving linear equations in real-world and mathematical problems."
 )
 ("OK.A1.A.4.1"
  "Calculate and interpret slope and the x- and y-intercepts of a line using a graph, an equation, two points, or a set of data points to solve realworld and mathematical problems."
 )
 ("OK.A1.A.4.2"
  "Solve mathematical and real-world problems involving lines that are parallel, perpendicular, horizontal, or vertical."
 )
 ("OK.A1.A.4.3"
  "Express linear equations in slope-intercept, point-slope, and standard forms and convert between these forms. Given sufficient information (slope and y-intercept, slope and one-point on the line, two points on the line, x- and y-intercept, or a set of data points), write the equation of a line."
 )
 ("OK.A1.A.4.4"
  "Translate between a graph and a situation described qualitatively."
 )
 ("OK.A1.F.1"
  "Understand functions as descriptions of covariation (how related quantities vary together) in real-world and mathematical problems."
 )
 ("OK.A1.F.1.1"
  "Distinguish between relations and functions."
 )
 ("OK.A1.F.1.2"
  "Identify the dependent and independent variables as well as the domain and range given a function, equation, or graph. Identify restrictions on the domain and range in real-world contexts."
 )
 ("OK.A1.F.1.3"
  "Write linear functions, using function notation, to model real-world and mathematical situations."
 )
 ("OK.A1.F.1.4"
  "Given a graph modeling a real-world situation, read and interpret the linear piecewise function (excluding step functions)."
 )
 ("OK.A1.F.2"
  "Recognize functions and understand that families of functions are characterized by their rate of change."
 )
 ("OK.A1.F.2.1"
  "Distinguish between linear and nonlinear (including exponential) functions arising from real-world and mathematical situations that are represented in tables, graphs, and equations. Understand that linear functions grow by equal intervals and that exponential functions grow by equal factors over equal intervals."
 )
 ("OK.A1.F.2.2"
  "Recognize the graph of the functions f(x) = x and f(x) = |x| and predict the effects of transformations [ f(x + c) and f(x) + c, where c is a positive or negative constant] algebraically and graphically using various methods and tools that may include graphing calculators."
 )
 ("OK.A1.F.3"
  "Represent functions in multiple ways and use the representation to interpret real-world and mathematical problems."
 )
 ("OK.A1.F.3.1"
  "Identify and generate equivalent representations of linear equations, graphs, tables, and real-world situations."
 )
 ("OK.A1.F.3.2" 
  "Use function notation; evaluate a function, including nonlinear, at a given point in its domain algebraically and graphically. Interpret the results in terms of real-world and mathematical problems."
 )
 ("OK.A1.F.3.3"
  "Add, subtract, and multiply functions using function notation."
 )
 ("OK.A1.D.1"
  "Display, describe, and compare data. For linear relationships, make predictions and assess the reliability of those predictions."
 )
 ("OK.A1.D.1.1"
  "Describe a data set using data displays, describe and compare data sets using summary statistics, including measures of central tendency, location, and spread. Know how to use calculators, spreadsheets, or other appropriate technology to display data and calculate summary statistics."
 )
 ("OK.A1.D.1.2"
  "Collect data and use scatterplots to analyze patterns and describe linear relationships between two variables. Using graphing technology, determine regression lines and correlation coefficients; use regression lines to make predictions and correlation coefficients to assess the reliability of those predictions."
 )
 ("OK.A1.D.1.3"
  "Interpret graphs as being discrete or continuous."
 )
 ("OK.A1.D.2"
  "Calculate probabilities and apply probability concepts."
 )
 ("OK.A1.D.2.1"
  "Select and apply counting procedures, such as the multiplication and addition principles and tree diagrams, to determine the size of a sample space (the number of possible outcomes) and to calculate probabilities."
 )
 ("OK.A1.D.2.2"
  "Describe the concepts of intersections, unions, and complements using Venn diagrams to evaluate probabilities. Understand the relationships between these concepts and the words AND, OR, and NOT."
 )
 ("OK.A1.D.2.3"
  "Calculate experimental probabilities by performing simulations or experiments involving a probability model and using relative frequencies of outcomes."
 )
 ("OK.A1.D.2.4"
  "Apply probability concepts to real-world situations to make informed decisions."
 )
 ))
