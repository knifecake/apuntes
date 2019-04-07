---
title: Resumen GCS
author: Elias Hernandis
---

\newcommand{\R}{\mathbb{R}}
\newcommand{\pescalar}[1]{\langle #1\rangle}
\newcommand{\norma}[1]{\lVert #1 \rVert}
\newcommand{\I}{\mathrm{I}}
\newcommand{\II}{\mathrm{II}}
\newcommand{\kur}{\mathcal{k}}

# Curvas en el plano y en el espacio

## Curvas en general

-   Una **curva plana** es una aplicación continua
    $\alpha: I \subset \R^n$ definida por
    $\alpha(t) = (\alpha_1(t), \dots,  \alpha_n(t))$.

-   La **rapidez** es la derivada
    $\alpha'(t) = (\alpha_1'(t), \dots, \alpha_n'(t))$

-   La **velocidad** es la norma de la rapidez
    $v_\alpha(t) = \left\lVert\alpha'(t)\right\rVert$

    -   $\alpha$ es **regular** $\iff v_\alpha(t) > 0, \forall t \in I$

    -   La derivada (o rapidez) normalizada es
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
            \mathbf{t}_\alpha(t) &= \frac{\alpha'(s)}{\left\lVert\alpha'(s)\right\rVert} \\
            \mathbf{n}_\alpha(t) &= J\mathbf{t}_\alpha(s) \text{ con } J = \left(\begin{array}{cc}
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
            \mathbf{t}_\alpha' &= k_\alpha v_\alpha \mathbf{n}_\alpha \\
            \mathbf{n}_\alpha' &= -k_\alpha v_\alpha \mathbf{t}_\alpha + \tau_\alpha v_\alpha \mathbf{b}_\alpha \\
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
  - $f$ es **equiárea** $\iff$ preserva la función $EG- F^2$ entre las formas
    fundamentales de $S_1$ y $S_2$

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

- La **aplicación de Gauss** $N: \x(U) \to \mathbb{S}^2$ definida por $$N(\x(u,
  v)) = \frac{\x_u \times \x_v}{\norma{\x_u \times \x_v}}$$ asocia a cada punto
  $p = \x(u, v) \in S$ su vector normal unitario.

  - $N$ define un **campo normal unitario** localmente para cada entorno
    $\x(U)$ de $p$.

  - Si $N$ define un campo normal globalmente para todo $p \in
    S$ se dice que $S$ es orientable. Esto depende de la parametrización, por
    tanto $S$ es **orientable** si existe alguna parametrización para la que $N$
    defina un campo normal unitario en toda $S$.

- La **segunda forma fundamental** es la aplicación $$\II_p : T_pS \times T_p S
  \to \R,\qquad \II_p(x,y) := \pescalar{x, W_p y}$$

  - $\II_p$ es bilineal y simétrica pero no tiene por qué ser definida positiva

  - La expresión matricial de $\II_p$ respecto de la base de vectores
    coordenados $\mathcal{B} = \{\x_u, \x_v\}$ se puede calcular a partir de la
    aplicación de Gauss mediante
    $$\II_p \equiv \left(\begin{array}{cc} e & f \\ f & g \end{array}\right) =
      \left(\begin{array}{cc} \pescalar{\x_{uu}, N} & \pescalar{\x_{uv}, N} \\
      \pescalar{\x_{vu}, N} & \pescalar{\x_{vv}, N}\end{array}\right)$$

- Una **dirección asintótica** de $S$ en $p$ es un vector $x \in T_pS$ no
  nulo tal que $\II_p(x,x) = 0$.

  - Una **línea asintótica** de $S$ es una curva diferenciable $\alpha: I \to
    S$ tal que $\alpha'(t)$ es dirección asintótica $\forall t \in I \iff
    \II(\alpha', \alpha') = 0$.

- El **operador de Weingarten** se define para cada $p \in T_pS$ como la
  aplicación $$W: T_pS \to T_pS \text{ con } Wp(x) := -(dN)_p x$$

  - Es una aplicación autoadjunta: $\pescalar{W_p x, y} = \pescalar{x, W_p y}$

  - Su expresión matricial respecto de cualquier base ortonormal de $T_pS$ es
    simétrica y por tanto diagonalizable. Además, las curvaturas que aparecen a
    continuación definidas en función de los autovalores de $W_p$ están bien
    definidas y permanecen invariantes por cambios de base.

  - La relación matricial respecto de $\mathcal{B}$ entre $\I_p, \II_p$ y $W$ es $$(\II_p)_{\mathcal{B}} = (\I_p)_{\mathcal{B}} (W_p)_{\mathcal{B}}$$

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

  - Un **punto umbilical** es un $p \in S$ tal que $\kur_1(p) = \kur_2(p)$

  - Las **funciones de curvatura principal** se obtienen de diagonalizar para
    diagonalizamos para $p$ genérico. Obtendremos funciones continuas
    $\kur_1(p)$ y $\kur_2(p)$. Si $\kur_1 \neq \kur_2$ entonces además son
    funciones diferenciables.
 
- La **curvatura de Gauss** de $S$ en $p$ es el número real $$K(p) := \det W_p
  = \kur_1(p) \cdot \kur_2(p) = \frac{eg - f^2}{EG - F^2}$$ para
  $e,f,g,E,F,G$ evaluadas en $p$.

  - Atendiendo a la curvatura gaussiana, los puntos $p \in S$ se clasifican en:
  
    1. **puntos elípticos** si $K(p) > 0$
    2. **puntos parabólicos** si $K(p) = 0 \land W_p \neq 0$ (e.d. si solo una
       de las dos curvaturas principales es $0$)
    3. **puntos planos** si $K(p) = 0 \land W_p = 0$ (e.d. si $\kur_1(p) =
       \kur_2(p) = 0$
    4. **puntos hiperbólicos** si $K(p) < 0$

- La **curvatura media** de $S$ en $p$ es el número real $$H(p) :=
  \frac{1}{2}\text{tr} W_p = \frac{1}{2}(\kur_1(p) + \kur_2(p)) =
  \frac{1}{2}\frac{eG+gE-2fF}{EG - F^2}$$ para $e,f,g,E,F,G$ evaluadas en
  $p$.
