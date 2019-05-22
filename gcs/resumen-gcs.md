---
title: Resumen GCS
author: Elias Hernandis
---

\newcommand{\R}{\mathbb{R}}
\newcommand{\pescalar}[1]{\langle #1\rangle}
\newcommand{\norma}[1]{\lVert #1 \rVert}
\newcommand{\I}{\mathrm{I}}
\newcommand{\II}{\mathrm{II}}
\newcommand{\kur}{\kappa}
\newcommand{\n}{\mathbf{n}}
\renewcommand{\t}{\mathbf{t}}

# Curvas en el plano y en el espacio

## Curvas en general

-   Una **curva plana** es una aplicación continua
    $\alpha: I \subset \R^n$ definida por
    $\alpha(t) = (\alpha_1(t), \dots,  \alpha_n(t))$.

-   La **velocidad** es la derivada
    $\alpha'(t) = (\alpha_1'(t), \dots, \alpha_n'(t))$

-   La **rapidez** es la norma de la velocidad
    $v_\alpha(t) = \left\lVert\alpha'(t)\right\rVert$

    -   $\alpha$ es **regular** $\iff v_\alpha(t) > 0, \forall t \in I$

    -   La derivada (o velocidad) normalizada es
        $T_\alpha(t) = \frac{\alpha'(t)}{v_\alpha(t)}$.

-   La **longitud** es $l_\alpha = \int_I v_\alpha(t)dt$.

-   Una **parametrización** es un difeomorfismo
    $\varphi : J \subset \R\to I \subset \R$

    -   El **signo de una parametrización** es $$\begin{aligned}
                    \varepsilon(\varphi) = \begin{cases}
                    +1 &\text{ si } \varphi'(t) > 0, \forall t \in J \\
                    -1 &\text{ si } \varphi'(t) < 0, \forall t \in J
                    \end{cases}
                \end{aligned}$$

    -   Una curva está **parametrizada por longitud de arco** o p.p.a
        $\iff \left\lVert\alpha'(t)\right\rVert = 1,\ \forall t \in I$.

-   Si para dos curvas $\alpha, \beta$ existe $\varphi$ difeomorfismo
    tal que $\alpha = \beta \circ \varphi$ decimos que
    $\alpha \sim \beta$

    -   $\sim$ es una relación de equivalencia

    -   Dos curvas en una misma clase de equivalencia comparten la traza
        o imagen.

    -   Se cumple $$\begin{aligned}
                    \alpha'(t) = \beta'(\varphi(t))\varphi'(t) \\
                    \left\lVert\alpha'(t)\right\rVert =
                \end{aligned}$$

-   Una curva es **birregular** $\iff$ para una parametrización $\alpha$
    se tiene que $\alpha'$ y $\alpha''$ son linealmente independientes.

    -   En particular, $\alpha', \alpha'' \neq 0$ y por tanto $\alpha$
        también es regular.

## Curvas planas

-   El **diedro de Frenet-Serret** formado por los vectores
    $$\begin{aligned}
            \mathbf{t}_\alpha(t) &= \frac{\alpha'(t)}{\left\lVert\alpha'(t)\right\rVert} \\
            \mathbf{n}_\alpha(t) &= J\mathbf{t}_\alpha(t) \text{ con } J = \left(\begin{array}{cc}
            0 & -1 \\
            1 & 0
            \end{array}\right) 
        \end{aligned}$$

-   La **curvatura** (con signo) $$\begin{aligned}
            k_\alpha(t) &= \frac{\langle \mathbf{t}_\alpha'(t), \mathbf{n}_\alpha(t) \rangle}{\left\lVert\alpha'(t)\right\rVert} \\
            k_\alpha(t) &= \frac{\det(\alpha'(t),\ \alpha''(t))}{\left\lVert\alpha'(t)\right\rVert^3}&\text{ si } \alpha \text{ regular } \\
            k_\alpha(t) &= \left\lVert\alpha''(t)\right\rVert &\text{ si } \alpha \text{ está p.p.a. }
        \end{aligned}$$

    -   El **vector curvatura** es
        $\mathbf{k}_\alpha(t) = k_\alpha(t) \mathbf{n}_\alpha(t)$

    -   El **radio de curvatura** $$\begin{aligned}
                \rho_\alpha(t) = \frac{1}{k_\alpha(t)}
            \end{aligned}$$

    -   El **centro de curvatura** $$\begin{aligned}
                C_\alpha(t) = \alpha(t) + \frac{1}{k_\alpha(t)}\mathbf{n}_\alpha(t)
            \end{aligned}$$

    -   El **circulo osculador** o **circunferencia osculatriz**
        $$\begin{aligned}
                \{p \in \R^2 : \left\lVert p - C_\alpha(t)\right\rVert = \frac{1}{k_\alpha(t)},\text{ para } t \in I\text{ fijado } \}
            \end{aligned}$$

-   Las **ecuaciones de Frenet-Serret** salen de tomar la submatriz
    $2 \times 2$ de las ecuaciones en el espacio.

## Curvas en el espacio

-   El triedro de Frenet-Serret formado por los vectores
    $$\begin{aligned}
            \mathbf{t}_\alpha(s) &= \frac{\alpha'(s)}{\left\lVert\alpha'(s)\right\rVert} \\
            \mathbf{n}_\alpha(s) &= \frac{\mathbf{t}_\alpha'(s)}{\left\lVert\mathbf{t}_\alpha'(s)\right\rVert} \\
            \mathbf{b}_\alpha(s) &= \mathbf{t}_\alpha(s) \times \mathbf{n}_\alpha(s)
        \end{aligned}$$

-   Los 3 planos del triedro de Frenet-Serret para un punto $\alpha(s)$
    de la curva \[afines\] son:

    -   El **plano osculador**
        $\text{ span}\{\mathbf{t}_\alpha(s), \mathbf{n}_\alpha(s)\} + \alpha(s)$
        cuyos puntos $P$ cumplen
        $\langle P - \alpha(s), \mathbf{b}_\alpha(s) \rangle = 0$

    -   El **plano normal**
        $\text{ span}\{\mathbf{n}_\alpha(s), \mathbf{b}_\alpha(s)\} + \alpha(s)$
        cuyos puntos $P$ cumplen
        $\langle P - \alpha(s), \mathbf{t}_\alpha(s) \rangle = 0$

    -   El **plano rectificante**
        $\text{ span}\{\mathbf{t}_\alpha(s), \mathbf{b}_\alpha(s)\} + \alpha(s)$
        cuyos puntos cumplen
        $\langle P - \alpha(s), \mathbf{n}_\alpha(s) \rangle = 0$

-   La **curvatura** (siempre $\geq 0$) $$\begin{aligned}
            k_\alpha(s) &=  \frac{\left\lVert\mathbf{t}_\alpha'(s)\right\rVert}{\left\lVert\alpha'(s)\right\rVert}
        \end{aligned}$$ $$\begin{aligned}
            k_\alpha(s) &= \frac{\left\lVert\alpha'(s) \times \alpha''(s)\right\rVert}{\left\lVert\alpha''(s)\right\rVert^3}  &\text{ si } \alpha \text{ regular }\\
            k_\alpha(s) &= \left\lVert\alpha''(s)\right\rVert &\text{ si } \alpha \text{ p.p.a}
        \end{aligned}$$

-   El **vector curvatura** $$\begin{aligned}
            \mathbf{k}_\alpha(s) &= \frac{\mathbf{t}_\alpha'(s)}{\left\lVert\alpha'(s)\right\rVert} \text{ colineal con } \mathbf{n}_\alpha(s)
        \end{aligned}$$

-   La **torsión** $$\begin{aligned}
            \tau_\alpha(s) &= -\frac{\langle \mathbf{b}_\alpha'(s), \mathbf{n}_\alpha(s) \rangle}{\left\lVert\alpha'(s)\right\rVert}\\
            \tau_\alpha(s) &= \frac{\det(\alpha'(s),\ \alpha''(s),\ \alpha'''(s))}{\left\lVert\alpha'(s) \times \alpha''(s)\right\rVert^2} \text{ si } \alpha \text{ regular }
        \end{aligned}$$

-   Las ecuaciones de Frenet-Serret $$\begin{aligned}
            \mathbf{t}_\alpha' &= v_\alpha k_\alpha \mathbf{n}_\alpha \\
            \mathbf{n}_\alpha' &= -v_\alpha k_\alpha \mathbf{t}_\alpha + v_\alpha \tau_\alpha \mathbf{b}_\alpha \\
            \mathbf{b}_\alpha' &= -v_\alpha \tau_\alpha \mathbf{n}_\alpha
        \end{aligned}$$ $$\begin{aligned}
            \left(\begin{array}{c}
            \mathbf{t}_\alpha' \\
            \mathbf{n}_\alpha' \\
            \mathbf{b}_\alpha'
            \end{array}\right) = \left\lVert\alpha'(s)\right\rVert \left(\begin{array}{ccc}
            0 & k_\alpha & 0 \\
            -k_\alpha & 0 & \tau_\alpha \\
            0 & -\tau_\alpha & 0
            \end{array}\right)\left(\begin{array}{c}
            \mathbf{t}_\alpha \\
            \mathbf{n}_\alpha \\
            \mathbf{b}_\alpha
            \end{array}\right)
        \end{aligned}$$

# Superficies

\newcommand{\x}{\mathbf{x}}

- Un **homeomorfismo** entre dos espacios topológicos es una aplicación biyectiva continua y con inversa continua.
    - Un **difeomorfismo** es un **homeomorfismo** diferenciable con inversa diferenciable.
    - Dos conjuntos son **homeomorfos** si existe un homeomorfismo entre ellos.

- Una **superficie regular** $S$ es un subconjunto no vacío $S \subset \R^3$
  tal que para todo $p \in S$ existe un abierto $U \subset \R^2$, un entorno
  abierto $V$ de $p$ en $\R^3$ y una **parametrización** $\x: U \subset \R^2
  \to V \subset S \subset \R^3$ tal que

  1. $\x$ es diferenciable como aplicación $x : U \to \R^3$

  2. $\x$ es un homeomorfismo

  3. $\forall (u,v) \in U, (d\x)_{(u,v)} : \R^2 \to \R^3$ es inyectiva $\iff$
     los vectores coordenaods son linealmente independientes $\forall (u,v) \in
     U$. 

  - Puede ocurrir (esfera, cono...) que no valga con una única parametrización
    $\forall p \in S$. Si nos vale con una única parametrización entonces $S$
    es homeomorfa a un abierto de $R^2$.

- Los **vectores coordenados** en un punto $\x(u, v) \in S$ son
    $$ \x_u(u, v) = \frac{\partial \x}{\partial u}(u,v) = (d\x)_{(u,v)} \cdot e_1\\
       \x_v(u, v) = \frac{\partial \x}{\partial v}(u,v) = (d\x)_{(u,v)} \cdot e_2$$

    - Los **campos coordenados** asociados a la parametrización $\x$ son dos
      campos $\x_u,\ \x_v$ diferenciables en el abierto $V \subset S$.

- El **plano tangente** a $S$ en $p \in S$ es un subvespacio vectorial de
  $\R^3$ con dimensión 2 dado por:
  $$\begin{aligned} T_pS = \{\alpha'(0) \mid \exists \varepsilon > 0, \alpha:
  (-\varepsilon, \varepsilon) \to S \\\land\ \alpha(0) = p \\\land\ \alpha
  \text{ diferenciable }\} \end{aligned}$$

  - Si $q$ es la preimagen de $p$ por $\x$ (es decir, $\x(q) = p$) entonces
    $T_pS = (d\x)_q (\R^2)$

  - El **plano tangente (afín)** a $S$ en $p = \x(u,v) \in S$
    $$\begin{aligned} T_pS = p + \underbrace{\text{ span}\{\x_u(u,v),
    \x_v(u,v)\}}_{\text{plano tangente vectorial}} \end{aligned}$$
  
- La **recta normal** a $S$ en $p \in S$ es el complemento ortogonal del plano tangente $T_pS^\perp$.
  - Para cada $p \in S$ existen dos vectores normales unitarios (opuestos) en la recta normal.

- Una **función definida en la superficie regular** $S$ es $f: S \to \R^m$.

  - $f$ es **diferenciable** si para toda parametrización $\x$ de $S$, la
    función $f \circ \x : U \subset R^2 \to R^m$ es diferenciable. Se cumplen
    las propiedades habituales sobre diferenciabilidad: suma producto y
    cociente (siempre que tenga sentido) de funciones diferenciables es
    diferenciable.

  - Si $f$ es una función definida entre dos superficies ($f: S_1 \to S_2$)
    entonces $f$ es **diferenciable** $\iff \forall p \in S_1$ hay una
    parametrización $\x_1 : U_1 \to S_1$ con $p \in \x_1(U_1)$ y una
    parametrización $\x_2 : U_2 \to S_2$ con $f(p) \in \x_2(U_2)$ tales que
    $\overline{f} := \x_2^{-1} \circ f \circ \x_1$ es diferenciable.
    $\overline{f}$ es la expresión en coordenadas de $f$.

  - La **diferencial de una función definida en una superficie regular** es
    $$(df)_p: T_pS \to \R,\qquad (df)_p(x) := (f \circ \alpha)'(0)$$
    donde $\alpha: (- \varepsilon, +\varepsilon) \to S$ es una curva
    diferenciable en $S$ tal que $\alpha(0) = p \land \alpha'(0) = x$. $(df)_p$
    está bien definida y es independiente de la elección de $\alpha$.

  - Más comodamente, si $\x$ es una parametrización de $S$ tal que para ciertos
    $u_0, v_0$ se tiene que $\x(u_0, v_0) = p$, entonces la matrix asociada a
    la diferencial en la base $\{\x_u(u_0, v_0), \x_v(u_0, v_0)$ es
      $$ (df)_p = \left(\begin{array}{c}
      (f \circ \x)_u(u_0, v_0) \\
      (f \circ \x)_v(u_0, v_0)\end{array}\right)$$

    - $f$ constante $\implies (df)_p = 0,\ \forall p \in S$. Recíprocamente,
      $(df)_p = 0 \forall p \in S \land S$ conexa $\implies f$ constante.
    - $f$ tiene un extremo relativo en $p \implies (df)_p = 0$.



- La **primera forma fundamental** de $S$ en $p$ es $$\I_p : T_pS \times T_pS
  \to \R,\qquad \I_p(x, y) := \pescalar{x, y}$$

  - Es bilineal, simétrica y definida positiva (es el producto escalar
    restringido a cada plano tangente de $S$ en $p$).

  - Dada una parametrización $\x$ de $S$ tal que $\x(u_0, v_0) = p \in S$ la matriz de $\I_p$ respecto de la base $\mathcal{B} = \{\x_u(u_0, v_0), \x_v(u_0, v_0)\}$ es
    $$ (I_p)_{\mathcal{B}} = \left(\begin{array}{cc}
    E & F \\
    F & G\end{array}\right) = \left(\begin{array}{cc}
    \pescalar{x_u, x_u} & \pescalar{x_u, x_v} \\
    \pescalar{x_v, x_u} & \pescalar{x_v, x_v}\end{array}\right)$$
    donde cada derivada parcial de $\x$ está evaluada en $(u_0, x_0)$.

  - Al escribir $$\I_p(x, y) = \pescalar{x, y} = (x_1, x_2) (I_p)_{\mathcal{B}}
    \left(\begin{array}{c} y_1 \\ y_2\end{array}\right)$$ estamos obteniendo el
    producto escalar de dos vectores en $T_pS$ en función de sus coordenadas $(x_1, x_2)$ e $(y_1, y_2)$ respecto de la base $\{\x_u, \x_v\}$.


  - La **forma diferencial de la primera forma fundamental** es $$I = E du^2 +
    2F dudv + F dv^2$$ donde $E, F$ y $G$ son funciones diferenciables que
    evaluamos para cada $p \in S$.

    - Del criterio de Sylvester para que $\I_p$ siempre sea definida positiva se
      tiene que $E, G > 0$ y que $EG - F^2 > 0$.

  - La **longitud de un segmento** de una curva diferenciable $\alpha: I \to S,\
    \alpha(t) = \x(u(t), v(t))$ es
    $$L(\alpha|_{[a,b]}) = \int_a^b \sqrt{\I_{\alpha(t)}(\alpha'(t),
    \alpha'(t))}dt = \int_a^b \sqrt{Eu'(t)^2 + 2Fu'(t)v'(t) + Gv'(t)^2}dt$$
 
  - El **área de una región** $R \subset S$ contenida en $\x(U)$ (bien
    parametrizada) es:
    $$A(R) = \int_{\x^{-1}(R)} \norma{\x_u \times x_v} dudv =
    \int_{\x^{-1}(R)}\sqrt{EG- F^2}dudv$$

Sea $f: S_1 \to S_2$ una aplicación diferenciable entre superficies regulares.

- $f$ es una **aplicación conforme** si existe una aplicación diferenciable
  positiva $\lambda: S_1 \to R$ tal que $$\pescalar{(df)_p(x), (df)_p(y)} =
  \lambda(p) \pescalar{x, y}, \qquad \forall x, y \in T_pS_1,\ \forall p \in S_1$$

  - Una **parametrización** $\x: U \subset \R^2$ se dice **conforme** si cumple
    la definición anterior para $S_2 = \R^2$. Es decir, $\forall x, y \in \R^2$
    y $\forall p \in U$.  Equivalentemente, $\x$ se dice conforme si $$\I_p^{\x}
    = \left(\begin{array}{cc} E & F \\ F & G \end{array}\right) = \lambda(p)
    \left(\begin{array}{cc} 1 & 0 \\ 0 & 1\end{array}\right)$$ es decir, si $E
    = G$ y $F = 0$ para todo $p = (u, v) \in U$.

  - $f$ es conforme $\iff$ **preserva ángulos**
  - $f$ es **equiárea** $\iff$ preserva $\det \I_p = EG- F^2$ entre $S_1$ y $S_2$

- $f$ es una isometría local $\iff$ preserva la primera forma fundamenteal, es decir, $$\pescalar{(df)_p(x), (df)_p(y)} = \pescalar{x, y}$$

  - $f$ es una isometría local $\iff f$ es conforme con $\lambda(p) = 1$
    constantemente

  - Toda isometría local de superficies es un difeomorfismo local

  - $f$ isometría local $\iff f$ preserva longitudes, ángulos y áreas

    - Es decir $f$ conforme y $f$ equiárea $\iff f$ isometría local

  - Dos superficies son **localmente isométricas** si existe una isometría
    local $f$ entre ellas y además $f$ es sobre entre $S_1$ y $S_2$. *No es
    suficiente que $f$ sea una isometría local.*

- Una **isometría global** entre superficies es un difeomorfismo global que
  además es isometría local.

    - Dos superficies son **globalmente isométricas** si existe una isometría
      global entre ellas.

    - isometría global $\implies$ isometría local

- La **aplicación de Gauss** $N: \x(U) \to \mathbb{S}^2$ definida por $$(N
  \circ \x)(u,v) = N(\x(u, v)) = \frac{\x_u \times \x_v}{\norma{\x_u \times
  \x_v}}$$ asocia a cada punto $p = \x(u, v) \in S$ su vector normal unitario.
  En ocasiones abusaremos de la notación para denotar $N$ como aplicación de
  $U$ a $\mathbb{S}^2$ escibiendo $N(u,v) = (N \circ \x)(u,v)$.

  - $N$ define un **campo normal unitario** localmente para cada entorno
    $\x(U)$ de $p$.

  - Si $N$ define un campo normal globalmente para todo $p \in S$ se dice que
    $S$ es orientable. Esto depende de la parametrización, por tanto $S$ es
    **orientable** si existe alguna parametrización para la que $N$ defina un
    campo normal unitario en toda $S$. Son orientables el plano, la esfera, los
    conjuntos de nivel y los grafos de funciones, entre otros.

  - A partir de N definimos un endomorfismo $J: T_pS \to T_pS$ dado por $$Jx :=
    N(p) \times x$$ que rota el vector $x \in T_pS$ 90º en el sentido que hace
    que $\{x, Jx, N(p)\}$ sea una base ortogonal positivamente orientada.

    Si tomamos $x = \t_\alpha(s)$ para una curva regular $\alpha \subset S$
    entonces la base que forman $\{\t_\alpha(s), J\t_\alpha(s), (N \circ
    \alpha)(s)\}$ se conoce como **triedro de Darboux**.


- La **segunda forma fundamental** es la aplicación $$\II_p : T_pS \times T_p S
  \to \R,\qquad \II_p(x,y) := \pescalar{x, W_p y}$$

  - $\II_p$ es bilineal y simétrica (en cualquier base, no solo en bases
    ortonormales) pero no tiene por qué ser definida positiva

  - La expresión matricial de $\II_p$ respecto de la base de vectores
    coordenados $\mathcal{B} = \{\x_u, \x_v\}$ se puede calcular a partir de la
    aplicación de Gauss mediante
    $$\II_p \equiv \left(\begin{array}{cc} e & f \\ f & g \end{array}\right) =
      \left(\begin{array}{cc} \pescalar{\x_{uu}, N} & \pescalar{\x_{uv}, N} \\
      \pescalar{\x_{vu}, N} & \pescalar{\x_{vv}, N}\end{array}\right)$$

  - Un punto $p \in S$ es **umbilical** si $\II_p = \lambda(p) \I_p$

- Una **dirección asintótica** de $S$ en $p$ es un vector $x \in T_pS$ no
  nulo tal que $\II_p(x,x) = 0$.

  - Una **línea asintótica** de $S$ es una curva diferenciable $\alpha: I \to
    S$ tal que $\alpha'(t)$ es dirección asintótica $\forall t \in I \iff
    \II(\alpha', \alpha') = 0$.

- El **endomorfismo de Weingarten** se define para cada $p \in T_pS$ como la
  aplicación $$W: T_pS \to T_pS \text{ con } Wp(x) := -(dN)_p x$$

  - Es una aplicación autoadjunta: $\pescalar{W_p x, y} = \pescalar{x, W_p y}$

  - Su expresión matricial[^matriz-weingarten] respecto de cualquier base ortonormal de $T_pS$ es
    simétrica y por tanto diagonalizable. Además, las curvaturas que aparecen a
    continuación definidas en función de los autovalores de $W_p$ están bien
    definidas y permanecen invariantes por cambios de base.

  - La relación matricial respecto de $\mathcal{B}$ entre $\I_p, \II_p$ y $W$ es $$(\II_p)_{\mathcal{B}} = (\I_p)_{\mathcal{B}} (W_p)_{\mathcal{B}}$$

  - Un punto $p \in S$ es **umbilical** si $W_p = \lambda(p) Id$

- Las **curvaturas principales** de $S$ en $p$ son los autovalores $\kur_1(p),
  \kur_2(p) \in \R$ de $W_p$.

  - Las **direcciones principales** son cualquier autovector de $W_p$. Si
    $\kur_1 \neq \kur_2$ las direcciones principales son los múltiplos no
    nulos de $e_1$ y $e_2$. Si $\kur_1 = \kur_2$ todo vector no nulo de
    $T_pS$ es dirección principal.

    - Una **línea de curvatura** es una curva diferenciable $\alpha: I \to S$
      tal que $\alpha'(t)$ es dirección principal de $S$ para todo $t \in I
      \iff W_{\alpha(t)}\alpha'(t) = \lambda(t)\alpha'(t),\ \forall t \in I$ y
      cierta función curvatura principal $\lambda : I \to \R$.

      Si el polinomio característico es complicado se puede utilizar que $$Wv =
      \lambda v \iff \I^{-1}\II v \lambda v \iff \II v = \lambda \I v$$. A
      partir de aquí, si necesitamos el $\lambda$ calculamos; si no, definimos
      $z = \II v$ y forzamos que sea linealmente dependiente de $v$, es decir,
      que $\det(\II v, v) = 0$.

  - Un **punto umbilical** es un $p \in S$ tal que $\kur_1(p) = \kur_2(p)$

  - Las **funciones de curvatura principal** se obtienen de diagonalizar para
    diagonalizamos para $p$ genérico. Obtendremos funciones continuas
    $\kur_1(p)$ y $\kur_2(p)$. Si $\kur_1 \neq \kur_2$ entonces además son
    funciones diferenciables.
 
- La **curvatura de Gauss** de $S$ en $p$ es el número real $$K(p) := \det W_p
  = \kur_1(p) \cdot \kur_2(p)$$ o, alternativamente $$K(p) = \det(\I^{-1} \II)
  = \frac{\det \II}{\det \I} = \frac{eg - f^2}{EG - F^2}$$ para $e,f,g,E,F,G$
  evaluadas en $p$.


  - El **Teorema Egregium de Gauss** dice que la curvatura gaussiana es
    invariante por isometrías locales. Es decir, que si $f:S_1 \to S_2$ es una
    isometría local, entonces $K_1(p) = K_2(f(p))$.

    Una consecuencia de que la curvatura gaussiana es una propiedad intrínseca
    es que la podemos obtener a partir de la primera forma
    fundamental[^ref-brioschi]. En particular, si la parametrización $\x$ es
    ortogonal, se tiene que: $$K =
    -\frac{1}{2\sqrt{EG}}\left[\frac{\partial}{\partial
    u}\left(\frac{G_u}{\sqrt{EG}}\right) + \frac{\partial}{\partial
    v}\left(\frac{E_v}{\sqrt{EG}}\right)\right],\qquad\text{ si } F = 0$$

  - Atendiendo a la curvatura gaussiana, los puntos $p \in S$ se clasifican en:
  
    1. **puntos elípticos** si $K(p) > 0$
    2. **puntos hiperbólicos** si $K(p) < 0$
    3. **puntos parabólicos** si $K(p) = 0 \land W_p \neq 0$ (e.d. si solo una
       de las dos curvaturas principales es $0$)
    4. **puntos planos** si $K(p) = 0 \land W_p = 0$ (e.d. si $\kur_1(p) =
       \kur_2(p) = 0$

- La **curvatura media** de $S$ en $p$ es el número real $$H(p) :=
  \frac{1}{2}\text{tr} W_p = \frac{1}{2}(\kur_1(p) + \kur_2(p))$$ o,
  alternativamente $$H(p) = \frac{1}{2} \text{tr} (\I^{-1} \II) =
  \frac{1}{2}\frac{eG+gE-2fF}{EG - F^2}$$ para $e,f,g,E,F,G$ evaluadas en $p$.

  - Una **superficie minimal** es aquella que tiene $H(p) = 0,\ \forall p \in
    S$. Son minimales los trozos de esfera y los trozos de plano.

Sea $\alpha: I \to \R^3$ una curva regular contenida en $S$ (es decir, $\alpha(I) \subset S$)

- [^aclaracion-curvaturas] La **curvatura geodésica** es $$k_{g,\alpha}(s) = \pescalar{\t_\alpha'(s), (N
  \circ \alpha) \times \t_\alpha(s))} = k_\alpha \pescalar{\n_\alpha, (N\circ
  \alpha) \times \t_\alpha}$$

- La **curvatura normal** es $$K_{n, \alpha} = \pescalar{\t_\alpha'(s), (N\circ
  \alpha)(s))} = k_\alpha \pescalar{\n_\alpha, N \circ \alpha}$$ además, en
  relación con la segunda forma fundamental tenemos $$k_{n,\alpha} =
  \II(\t_\alpha, \t_\alpha)$$

  - Cualesquiera dos curvas regulares que pasen por un mismo punto $p \in S$
    con vectores velocidad colineales tienen la misma curvatura normal por lo
    que definimos la **curvatura normal de $S$ en $p$ en la dirección de un
    vector unitario $x$ dado** por $$k_n(p, x) := \II_p(x, x)$$

  - Si para una dirección $x \in T_pS$ tenemos que $k_n(p, x) = 0$ entonces $x$
    es una dirección asintótica.

  - Si $\{e_1, e_2\}$ es una base ortonormal de $T_pS$ de dorecciones
    principales de manera que $W_p$ es diagonal con coeficientes $\kur_1(p),
    \kur_2(p)$ y $x_\theta$ es una dirección en $T_pS$ enotnces $$k_n(p,
    x_\theta) = \kur_1(p)\cos^2\theta + \kur_2(p)\sin^2\theta$$ donde $\cos
    \theta = \pescalar{ e_1, x_\theta}$.

- Curvaturas normal, geodésica y la curvatura escalar de $\alpha$ cumplen $k_\alpha^2 = k_{g,\alpha}^2 + k_{n, \alpha}^2$

- Una **geodésica** es una curva $\alpha \subset S$ cuya componente tangencial de
  la aceleración es nula en todo punto de la curva: $$k_{g,\alpha}(s) = 0,\
  \forall s \in I$$

  - Las isometrías[^aclaracion-isometrias-geodesicas] locales preservan las
    geodésicas: si $\alpha_1$ es una geodésica en $S_1$ y $S_2$ es localmente
    isométrica a $S_1$ por h, entonces la curva $\alpha_2 = h \circ \alpha_1
    \subset S_2$ también es una geodésica. En el plano las geodésicas son las
    rectas.

  - Si $\alpha$ une dos puntos de $S$ y tiene longitud mínima, entonces
    $\alpha$ es una geodésica. Dados dos puntos, la curva que los une de menor
    longitud es una geodésica y es única. [^aclaracion-unicidad-geodesicas]

  - El **Teorema de Clairaut**[^aclaracion-clairaut] dice que si la primera
    forma fundamental de una parametrización $\x(u,v)$ solo depende de $u$,
    entonces $\alpha \subset S$ es una geodésica $\iff \pescalar{\alpha', \x_v}
    = a$ con $a$ constante.

    Como $\alpha' \in T_pS$ podemos escribir $\alpha' = u'\x_u + v'\x_v$ y por
    tanto $\pescalar{\alpha', \x_v} = \pescalar{u'\x_u + v'\x_v, \x_v} = u'F +
    v'G$ utilizando que $\I$ es bilineal.
  

[^aclaracion-curvaturas]: Las curvaturas geodésica y normal son las componentes
del vector normal $\n_\alpha$ de una curva $\alpha \subset S$ regular.
Recordemos que dado un punto de la curva que también está en la superficie
podemos construir el triedro de Darboux tomando como vector de referencia
$\t_\alpha(s)$. En este caso, se genera el la base ortogonal $\{\t_\alpha(s),
J\t_\alpha(s), (N \circ \alpha)(s)\}$. Como $\n_\alpha(s) \perp \t_\alpha(s)$
si expresamos $\n_\alpha(s)$ respecto del triedro de Darboux solo tendrá
coordenadas en $J\t_\alpha(s)$ y $(N \circ \alpha)(s)$. Definimos las
curvaturas geodésica y media como este par de coordenadas respecto del triedro
de Darboux (sabiendo que la coordenada que acompaña a $\t_\alpha(s)$ siempre
será 0).

[^matriz-weingarten]: Si calculamos $W_p$ mediante la diferencial del normal,
debemos recordar que para obtener la forma matricial del endomorfismo
necesitamos fijar una base.  Por tanto, para llegar a la misma matriz que la
que sale de las formas fundamentales mediante la fórmula que se expone a
continuación, necesitamos expresar $dN$ respecto de la base de vectores
coordenados.


[^aclaracion-unicidad-geodesicas]: Sin embargo, si $\alpha$ es una geodésica
que pasa por dos puntos, no tiene por qué ser la curva de menor longitud que
los une, puede haber varias geodésicas que lo hagan. Lo importante es que solo
una curva será de longitud mínima y dicha curva será una geodésica.

[^ref-brioschi]: Ver la fórmula de Brioschi en
[https://en.wikipedia.org/wiki/Gaussian_curvature#Alternative_formulas](https://en.wikipedia.org/wiki/Gaussian_curvature#Alternative_formulas)

[^aclaracion-clairaut]: No confundir con el Teorema de Clairaut-Schwarz sobre
la simetría de las derivadas cruzadas.

[^aclaracion-isometrias-geodesicas]: Ojo: en ocasiones hay que trabajar un poco
para obtener la parametrización. Por ejemplo, la isometría entre plano y cono
no es la identidad como ocurre en el cilindro. La forma más sencilla de
obtenerla es parametrizar el plano en coordenadas polares y el cono como
superficie de revolución, pero además tomando una parametrización por longitud
de arco de la recta $(r(u), z(u))$ que giramos al rededor del eje $z$ para
parametrizar el cono. Esto nos da casi una isometría salvo por el $G$ de la
$I_\phi$. Lo corregimos multiplicando $v$ por la norma de la recta $(r, z)$. Es
decir, parametrizar el plano por $\x(r, \theta)$ y el cono por $\phi(u, v)$
donde $$\x(r,\theta) = (r\cos\theta, r\sin\theta, 0) \\ \phi(u,v) = \frac{\rho
u}{\sqrt{\rho^2 + 1}}\left(\cos(v\sqrt{\rho^2 + 1}), \sin(v \sqrt{\rho^2 + 1}),
1\right)$$ En cualquier caso, aunque lo de las isometrías está bien, no debemos
olvidar el Teorema de Clairaut mencionado más arriba. En este caso,
parametrizando el cono sin las restricciones adicionales, es decir, tomando
$\psi(u, v) = (u\cos v, u \sin v, u)$ como parametrización, tenemos que
$I_\psi$ solo depende de $u$ y por tanto podemos aplicar el teorema.
