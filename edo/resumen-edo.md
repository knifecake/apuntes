---
title: Resumen de EDO
author: Elias Hernandis
---


\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\renewcommand{\Re}{\operatorname{Re}}
\renewcommand{\Im}{\operatorname{Im}}
\newcommand{\A}{\mathbb{A}}
\newcommand{\norma}[1]{\lVert #1 \rVert}

# Tipos de ecuaciones de primer grado

* De variables separadas: cuando se puede dejar $t$ a un lado y $x$ a otro, por
  ejemplo

  $$x' = t^2x \iff \frac{dx}{dt} = t^2x \iff \frac{dx}{x} = t^2dt$$ se

  resuelven integrando a ambos lados.

* Exactas: son de la forma $Mdx + Ndy = 0$. Se resuelven encontrando $G(x,t) = 0$. Para ello hay dos caminos:
  * Si $M_y = N_x$, esto es, si $\frac{\partial M}{\partial y} = \frac{\partial
      N}{\partial x}$ entonces $G(x,y)$ se obtiene integrando $G(x,y) = \int M
      dy + H(x) = \int N dx + H(y)$.

# Ecuaciones diferenciales ordinarias de grado $n$

* Una ecuación diferencial de grado $n$ se puede escribir $$x^{(n)} +
  a_{n-1}(t)x^{(n-1)} + \dots  + a_2(t)x'  + a_1(t) x = f(t)$$

  Si el coeficiente de $x^{(n)}$ no es $0$ se puede dividir por el para llegar
  a la forma anterior. Sino, se trata de una ecuación de grado $n-1$.

* Su ecuación homogénea asociada es $$x^{(n)} + a_{n-1}(t)x^{(n-1)} + \dots  +
  a_2(t)x' + a_1(t) x = 0$$

  Las soluciones de esta ecuación están en un espacio vectorial de dimensión
  $n$. Esto significa que encontrando $n$ soluciones linealmente independientes
  $x_1, \dots, x_n$ ya tenemos todas las soluciones de la ecuación homogénea
  que podemos escribir como la solución general $$x_h(t) = c_1 x_1(t) + \dots +
  c_n x_n(t)$$

* En general, no hay un método para resolver ecuaciones en las que los
  coeficientes $a_1(t), \dots, a_{n-1}(t)$ no son constantes pero algunas
  admiten trucos que se describen más adelante.

* En cualquier caso, la solución de una EDO (homogénea o no) de grado $n$
  siempre será $$ x(t) = x_h(t) + x_p(t)$$ donde $x_h$ es una solución general
  de la ecuación homogénea asociada y $x_p$ una solución particular de la EDO
  original.

* Si $a_1(t), \dots, a_{n-1}(t)$ son en realidad constantes entonces la
  solución de la ecuación se obtiene con el siguiente procedimiento:

  1. Solución de general de la homogénea, e.d., base de un e.v. de dimensión
     $n$. Es de la forma $$x_h(t) = c_1 x_1(t) + c_2 x_2(t) + \dots + c_n
     x_n(t)$$ para $c_1, \dots, c_n \in \R$ y $x_1, x_2, \dots, x_n$ soluciones
     particulares linealmente independientes. Estas últimas se pueden obtener a
     partir de las soluciones de la ecuación característica $P(\lambda) =
     \lambda^n + a_{n-1}\lambda^{n-1} + \dots + a_2 \lambda + a_1 = 0$

     * Si todas las raíces son reales y distintas entonces la solución es de la
       forma $$x_h(t) = c_1 e^{\lambda_1 t} + c_2 e^{\lambda_2 t} + \dots + c_n
       e^{\lambda_n t}$$

     * Si aparecen raíces $\lambda$ con multiplicidad $m > 1$ entonces la
       solución homogénea incluirá los términos $$c_1 e^{\lambda t} + c_2 t
       e^{\lambda t} + \dots + c_m t^{m-1} e^{\lambda t}$$ para garantizar que
       el espacio de solucuiones siga teniendo dimensión $n$.

     * Si aparecen dos raíces $\lambda_1, \lambda_2$ complejas entonces también
       serán conjugadas. Si decimos que $\lambda_1 = a + bi$ (y por tanto
       $\lambda_2 = a - bi$), la solución tendrá términos de la forma $$c_1
       e^{\lambda_1 t} + c_2 e^{\lambda_2 t} = e^{at}\left(\hat{c_1}\cos bt +
       \hat{c_2}\sin bt\right)$$ En este caso todas las constantes son reales
       (la parte imaginaria se cancela).

  2. Solución particular de la EDO:

     * Por variación de constantes utilizando el Wronskiano
       $$ \left( \begin{array}{cccc}
        x_1(t)         & x_2(t)         & \dots  & x_n(t) \\
        x_1'(t)        & x_2'(t)        & \dots  & x_n'(t) \\
        \vdots         & \vdots         & \ddots & \vdots \\
        x_1^{(n-1)}(t) & x_2^{(n-1)}(t) & \dots  & x_n^{(n-1)}(t)
       \end{array}\right)\left(\begin{array}{c} c_1'(t) \\ c_2'(t) \\ \vdots \\
       c_n'(t)\end{array}\right) = \left(\begin{array}{c}0 \\ 0 \\ \vdots
       \\f(t)\end{array}\right) $$
       e integrando $c_i'(t)$ con respecto a $t$.

     * Por coeficientes indeterminados

  3. Concluir que la solución general de la EDO es $x(t) = x_h(t) + x_p(t)$.

* Las constantes $c_1, \dots, c_n$ de la solución general de la EDO original se
  determinan a partir de un PVI en el que aparecen $n$ condiciones (por ejemplo
  de la forma $x(0) = x_0, x'(0) = x_1, \dots, x^{(n - 1)}(0) = x_{n-1}$.

# Sistemas de ecuaciones lineales

## Sistemas lineales con coeficientes constantes

* Un sistema lineal de EDOs se ecribe $$X'(t) = \A X(t) + B(t)$$ donde $X(t)$
  es una función vectorial de $n$ variables, $X'(t)$ su derivada con respeco de
  $t$ y $B$ un vector de funciones en $t$.

* Un sistema lineal es homogéneo si $B(t)$ es nulo.

  * Las soluciones de un sistema lineal homogéneo de $n$ EDOs es un espacio
    vectorial de dimensión $n$.

  * Se obtiene una base de este espacio a partir de la ecuación característica
    en $\lambda$. En el caso de los sistemas la ecuación característica es el
    polinomio característico de la matriz $\A$ igualado a 0: $$\det (\A -
    \lambda I) = 0$$

    * Para cada $\lambda_i$ autovalor de $\A$ con multiplicidad 1 se obtiene
      una solución $X_i(t) = e^{\lambda_i t}V_i$ donde $V_i$ es el autovector
      asociado a $\lambda_i$.

    * Para cada $\lambda_i$ autovalor de $\A$ con multiplicidad $m$ se obtiene
      una solución de la forma $X_i(t) = e^{\lambda_i t}(V_1 + tV_2 + \dots +
      t^{m-1}V_m$. Los vectores $V_1, \dots, V_{m-1}$ se obtienen de plantear
      el sistema: \begin{multline*} \begin{cases} \frac{d}{dt} e^{\lambda_i
      t}V_1 = \A V_1 \\ \frac{d}{dt} e^{\lambda_i t}(V_1 + tV_2) = \A (V_1 +
      tV_2) \\ \dots \\ \frac{d}{dt} e^{\lambda_i t}(V_1 + t V_2 + \dots +
      t^{m-1} V_m) = \A (V_1 + t V_2 + \dots + t^{m-1} V_m) \end{cases} \iff \\
      \begin{cases} \lambda_i V_1 = \A V_1 \\ \lambda_i (V_1 + t V_2) = \A(V_1
      + tV_2) \\ \dots \\ \lambda_i(V_1 + \dots  + t^{m-1}V_m = \A(V_1 + \dots
      + t^{m-1}V_m \end{cases} \end{multline*}
    * Si $\lambda_i$ es complejo

  * La solución general de un sistema lineal homogéneo puede darse por la
    matriz fundamental principal $e^{t\A}$.

## Sistemas lineales con coeficientes variables

* En general no se pueden resover por el mismo procedimiento.

* Si en realidad son sistemas no ligados, sí que se pueden resolver, por
  ejemplo el ejercicio 12 de la hoja 4 en el que una ecuación es $y_1' = y_1$.

# Teorema general de existencia y unicidad

Sea $f:I \subset \R \to \R$ una función. Definimos su norma infinito
$$\norma{f}_\infty = \sup_{x \in I} f(x)$$ que es una norma como otra
cualquiera y cumple las propiedades habituales.


Sea $\{f_n\}_{n=1}^\infty$ una sucesión de funciones sobre un intervalo $I$

* $\{f_n\}$ converge punto a punto a $f(x) \iff$ $$\forall x \in I,\ f_n(x)
  \xrightarrow{n\to \infty} f(x)$$

* $\{f_n\}$ converge uniformemente a $f(x) \iff \forall \varepsilon > 0,
  \exists N \in \N$ tal que $$|f_n(x) - f(x)| < \varepsilon,\ \forall n > N,\
  \forall x \in I$$

   1. Si $\{f_n\}$ converge uniformemente a $f$ entonces $\{f_n\}$ también
      converge punto a punto a $f$.

   2. Si $\{f_n\}$ converge uniformemente a $f$ y cada $f_n$ es continua
      entonces la función límite $f$ también es continua.

   3. Como el límite (punto a punto o uniforme) de una sucesión $\{f_n\}$ es
      único, si $\{f_n\}$ converge punto a punto a $f$ entonces $f$ es la única
      candidata a límite uniforme de $\{f_n\}$.

   3. De 1., 2. y 3. se deduce que si $\{f_n\}$ con $f_n$ continua es
      convergente punto a punto a $f$ y $f$ no es continua entonces $\{f_n\}$
      no puede ser convergente uniformemente a $f$.

   4. $\{f_n\}$ converge uniformemente a $f \iff \norma{f_n - f}_\infty \to 0$,
      es decir, si $\lim_{n\to \infty} \sup |f_n - f| = 0$.

      * Si queremos probar que $f_n$ converge uniformemente a $f$ tenemos que
        encontrar dicho supremo y ver que tiende a 0 cuando $n$ tiende a
        $\infty$ (por ejemplo, igualando $f'_n = 0$ y mirando también en los
        extremos del intervalo).

      * Si queremos probar que $f_n$ no converge uniformemente vale con
        encontrar un $x_0 \in I$ para el que $$\lim_{n\to \infty} |f_n(x_0) -
        f(x_0)| \neq 0$$

   1. Si estamos en un espacio vectorial normado por $\norma{\cdot}_\infty$ que
      además es completo (de Banach) (por ejemplo $C([a,b]) \equiv$ las
      funciones continuas de $[a, b]$ en $\R$) entonces $$\{f_n\} \text{ de
      Cauchy } \iff \{f_n\} \text{ uniformemente convergente }$$

* Una función $f: I \subset \R^m \to \R^n$ es **Lipschitz** $\iff \exists L \in
  \R$ tal que $$ \norma{f(x) - f(y)}_n \leq L \norma{x - y}_m,\ \forall x,y \in
  I$$

  1. $f$ Lipschitz $\implies f$ continua
  2. $f$ derivadas parciales acotadas $\implies f$ Lipschitz
     * Si $f$ es $C^1$ (las derivadas parciales son continuas) entonces en un
       compacto también son acotadas y por tanto $f$ es Lipschitz en ese
       compacto.

* $f$ es localmente Lipschitz si para todo punto existe un entorno en el que se
  cumple la condición de Lipschitz.

* **Teorema de existencia y unicidad global.** Sea $F:[a,b] \times \R^d \to \R^d,\
  (t,X) \mapsto F(t,X)$ una función Lipschitz con respecto a $X \in \R^d$ y sea
  el PVI
  $$\begin{cases}X'(t) = F(t, X(t)),\ \forall t \in [a,b] \\
    X(t_0) = X_0,\ t_0 \in [a,b]
    \end{cases}$$
  Entonces existe una única $X:[a,b] \to \R^d$ de clase $C^1$ que verifica el
  PVI anterior.

* 3 resultados sobre prolongabilidad de soluciones en $R^2$. Sea $D$ la banda $D = (a,b) \times \R$ y sea $x' = f(t, x)$ con $f:(a,b) \to \R$. Si se cumple cualquiera de las 3 siguientes condiciones, entonces existe una solución maximal definida $\forall t \in (a,b)$.
    1. $|f(t,x)| < L$ para algún $L \in \R$
    2. $|f(t,x)| + \alpha(t) |x| + \beta(t)$ con $\alpha, \beta$ continuas en
       $(a,b)$. 
    3. $|f(x_1, t_1)  - f(x_2, t_2)| \leq K(t)|x_1 - x_2|$ con $K$ continua en $(a,b)$

    Observar que las dos últimas condiciones permiten asíntotas verticales en
    $t=a$ y $t=b$.

* **Corolario del Lema de Gronwall** para acotación de soluciones. Sea $F(t,
    u(t))$ una función Lipschitz con constante $L$ (no necesariamente la menor)
    y sean $x_1(t), x_2(t)$ tales que se verifica $$|x_1'(t) - F(t, x_1(t))|
    < \varepsilon_1\\|x_2'(t) - F(t, x_2(t))| < \varepsilon_2$$ donde
    $\varepsilon_1, \varepsilon_2$ son constantes. Entonces $$ |x_1(t) -
    x_2(t)| < |x_1(a) - x_2(a)|e^{L(t-a)} + \frac{e^{L(t-a)} -
    1}{L}(\varepsilon_1 + \varepsilon_2)$$
