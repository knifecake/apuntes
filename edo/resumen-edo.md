---
title: Resumen de EDO
author: Elias Hernandis
---


\newcommand{\R}{\mathbb{R}}
\renewcommand{\Re}{\operatorname{Re}}
\renewcommand{\Im}{\operatorname{Im}}
\newcommand{\A}{\mathbb{A}}

# Ecuaciones diferenciales ordinarias de grado $n$

* Una ecuación diferencial de grado $n$ se puede escribir $$x^{(n)} + a_{n-1}(t)x^{(n-1)} + \dots  + a_2(t)x'  + a_1(t) x = f(t)$$
  Si el coeficiente de $x^{(n)}$ no es $0$ se puede dividir por el para llegar a la forma anterior. Sino, se trata de una ecuación de grado $n-1$.

* Su ecuación homogénea asociada es $$x^{(n)} + a_{n-1}(t)x^{(n-1)} + \dots  + a_2(t)x' + a_1(t) x = 0$$
  Las soluciones de esta ecuación están en un espacio vectorial de dimensión $n$. Esto significa que encontrando $n$ soluciones linealmente independientes $x_1, \dots, x_n$ ya tenemos todas las soluciones de la ecuación homogénea que podemos escribir como la solución general $$x_h(t) = c_1 x_1(t) + \dots + c_n x_n(t)$$
* En general, no hay un método para resolver ecuaciones en las que los coeficientes $a_1(t), \dots, a_{n-1}(t)$ no son constantes pero algunas admiten trucos que se describen más adelante.

* En cualquier caso, la solución de una EDO (homogénea o no) de grado $n$ siempre será $$ x(t) = x_h(t) + x_p(t)$$ donde $x_h$ es una solución general de la ecuación homogénea asociada y $x_p$ una solución particular de la EDO original.

* Si $a_1(t), \dots, a_{n-1}(t)$ son en realidad constantes entonces la solución de la ecuación se obtiene con el siguiente procedimiento:

  1. Solución de general de la homogénea, e.d., base de un e.v. de dimensión $n$. Es de la forma $$x_h(t) = c_1 x_1(t) + c_2 x_2(t) + \dots + c_n x_n(t)$$ para $c_1, \dots, c_n \in \R$ y $x_1, x_2, \dots, x_n$ soluciones particulares linealmente independientes. Estas últimas se pueden obtener a partir de las soluciones de la ecuación característica $P(\lambda) = \lambda^n + a_{n-1}\lambda^{n-1} + \dots + a_2 \lambda + a_1 = 0$

     * Si todas las raíces son reales y distintas entonces la solución es de la forma $$x_h(t) = c_1 e^{\lambda_1 t} + c_2 e^{\lambda_2 t} + \dots + c_n e^{\lambda_n t}$$

     * Si aparecen raíces $\lambda$ con multiplicidad $m > n$ entonces la solución homogénea incluirá los términos $$c_1 e^{\lambda t} + c_2 t e^{\lambda t} + \dots + c_m t^{m-1} e^{\lambda t}$$ para garantizar que el espacio de solucuiones siga teniendo dimensión $n$.

     * Si aparecen dos raíces $\lambda_1, \lambda_2$ complejas entonces también serán conjugadas. Si decimos que $\lambda_1 = a + bi$ (y por tanto $\lambda_2 = a - bi$), la solución tendrá términos de la forma $$c_1 e^{\lambda_1 t} + c_2 e^{\lambda_2 t} = e^{at}\left(\hat{c_1}\cos bt + \hat{c_2}\sin bt\right)$$ En este caso todas las constantes son reales (la parte imaginaria se cancela).

  2. Solución particular de la EDO:

     * Por variación de constantes utilizando el Wronskiano
       $$ \left( \begin{array}{cccc}
        x_1(t)         & x_2(t)         & \dots  & x_n(t) \\
        x_1'(t)        & x_2'(t)        & \dots  & x_n'(t) \\
        \vdots         & \vdots         & \ddots & \vdots \\
        x_1^{(n-1)}(t) & x_2^{(n-1)}(t) & \dots  & x_n^{(n-1)}(t)
       \end{array}\right)\left(\begin{array}{c} c_1'(t) \\ c_2'(t) \\ \vdots \\ c_n'(t)\end{array}\right) = \left(\begin{array}{c}0 \\ 0 \\ \vdots \\f(t)\end{array}\right) $$
       e integrando $c_i'(t)$ con respecto a $t$.

     * Por coeficientes indeterminados

  3. Concluir que la solución general de la EDO es $x(t) = x_h(t) + x_p(t)$.

* Las constantes $c_1, \dots, c_n$ de la solución general de la EDO original se determinan a partir de un PVI en el que aparecen $n$ condiciones (por ejemplo de la forma $x(0) = x_0, x'(0) = x_1, \dots, x^{(n - 1)}(0) = x_{n-1}$.

# Sistemas de ecuaciones lineales

## Sistemas lineales con coeficientes constantes

* Un sistema lineal de EDOs se ecribe $$X'(t) = \A X(t) + B(t)$$ donde $X(t)$ es una función vectorial de $n$ variables, $X'(t)$ su derivada con respeco de $t$ y $B$ un vector de funciones en $t$.

* Un sistema lineal es homogéneo si $B(t)$ es nulo.

  * Las soluciones de un sistema lineal homogéneo de $n$ EDOs es un espacio vectorial de dimensión $n$.

  * Se obtiene una base de este espacio a partir de la ecuación característica en $\lambda$. En el caso de los sistemas la ecuación característica es el polinomio característico de la matriz $\A$ igualado a 0: $$\det (\A - \lambda I) = 0$$

    * Para cada $\lambda_i$ autovalor de $\A$ con multiplicidad 1 se obtiene una solución $X_i(t) = e^{\lambda_i t}V_i$ donde $V_i$ es el autovector asociado a $\lambda_i$.

    * Para cada $\lambda_i$ autovalor de $\A$ con multiplicidad $m$ se obtiene una solución de la forma $X_i(t) = e^{\lambda_i t}(V_1 + tV_2 + \dots + t^{m-1}V_m$. Los vectores $V_1, \dots, V_{m-1}$ se obtienen de plantear el sistema:
      \begin{multline*}
      \begin{cases}
      \frac{d}{dt} e^{\lambda_i t}V_1 = \A V_1 \\
      \frac{d}{dt} e^{\lambda_i t}(V_1 + tV_2) = \A (V_1 + tV_2) \\
      \dots \\
      \frac{d}{dt} e^{\lambda_i t}(V_1 + t V_2 + \dots + t^{m-1} V_m) = \A (V_1 + t V_2 + \dots + t^{m-1} V_m)
      \end{cases} \iff \\
      \begin{cases}
      \lambda_i V_1 = \A V_1 \\
      \lambda_i (V_1 + t V_2) = \A(V_1 + tV_2) \\
      \dots \\
      \lambda_i(V_1 + \dots  + t^{m-1}V_m = \A(V_1 + \dots + t^{m-1}V_m
      \end{cases}
      \end{multline*}
    * Si $\lambda_i$ es complejo

  * La solución general de un sistema lineal homogéneo puede darse por la matriz fundamental principal $e^{t\A}$.

## Sistemas lineales con coeficientes variables

* En general no se pueden resover por el mismo procedimiento.

* Si en realidad son sistemas no ligados, sí que se pueden resolver, por ejemplo el ejercicio 12 de la hoja 4 en el que una ecuación es $y_1' = y_1$.
