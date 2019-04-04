---
title: Resumen GCS
author: Elias Hernandis
---

\newcommand{\R}{\mathbb{R}}
\newcommand{\pescalar}[1]{\langle#1\rangle}

Curvas en el plano y en el espacio
==================================

Curvas en general
-----------------

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

Curvas en el espacio
--------------------

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

## Superficies

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

- La **primera forma fundamental** $I$
  - Es bilineal, simétrica y definida positiva.

- La **aplicación de Gauss**
- El **operador de Weingarten** se define para cada $p \in T_pS$ como la
  aplicación $$W: T_pS \to T_pS \text{ con } Wp(x) := -(dN)_p x$$

  - Es una aplicación autoajunta: $\pescalar{W_p x, y} = \pescalar{x, W_p y}$
