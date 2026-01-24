#import "@preview/physica:0.9.5": *

#set heading(numbering: "1.1")
#set math.equation(numbering: "(1)")
#set page(numbering: "1")
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)

#show heading: set block(above: 1.4em, below: 1em)
#show math.equation: set block(breakable: true)

= Symmetries in Quantum Field Theory from _Quantum Field Theory II_ by David Skinner

https://www.damtp.cam.ac.uk/user/dbs26/AQFT/chap6.pdf

== Symmetries and conserved charges in the classical theory

Vector field in the infinite dimensional space of fields $ epsilon.alt^r V_r := integral_M dif^d x sqrt(g) epsilon.alt^r f_r^a (phi.alt, partial phi.alt) dv(, phi.alt^a (x), d: delta) $

Infinitesimal transformation of fields $ phi^a (x) |-> phi'^a (x) = phi.alt^a (x) + delta phi.alt^a (x) = phi.alt^a (x) + epsilon.alt^r f_r^a (phi.alt, partial_mu phi.alt) $

On one hand, the transformation is a symmetry #footnote[It's possible for the field equations to be invariant under further transformations that do not preserve the Lagrangian. For example, free particle travelling on $RR^n$ $ cal(L) = 1 / 2 m delta_(mu nu) dv(x^mu, t) dv(x^nu, t) => dv(x^mu, t, 2) = 0. $

  $G L(n, RR)$ is the symmetric group of the equation of motions, but only $O(n)$ is the symmetric group of the Lagrangian.

  - Dynamical symmetry: symmetry of the equation of motion that does not come from symmetry of the Lagrangian.] $ delta cal(L)(phi.alt, partial phi.alt) = partial_mu (epsilon.alt^r K_r^mu) $

On the other hand, the change in the Lagrangian under the transformation $ delta cal(L) = & dv(cal(L), phi.alt^a, d: delta) delta phi.alt^a + dv(cal(L), (partial_mu phi.alt^a), d: delta) partial_mu delta phi.alt^a = [dv(cal(L), phi.alt^a, d: delta) - partial_mu dv(cal(L), (partial_mu phi.alt^a), d: delta)] delta phi.alt^a + partial_mu [dv(cal(L), (partial_mu phi.alt^a), d: delta) delta phi.alt^a], quad delta phi.alt^a = epsilon.alt^r f_r^a (phi.alt, partial phi.alt) $

So we have $ [dv(cal(L), phi.alt^a, d: delta) - partial_mu dv(cal(L), (partial_mu phi.alt^a), d: delta)] delta phi.alt^a + partial_mu [dv(cal(L), (partial_mu phi.alt^a), d: delta) delta phi.alt^a - epsilon.alt^r K_r^mu] = 0 $

Current $ J_r^mu = dv(cal(L), (partial_mu phi.alt^a), d: delta) f_r^a (phi.alt, partial phi.alt) - epsilon.alt^r K_r^mu, quad epsilon.alt^r partial_mu J_r^mu = - [dv(cal(L), phi.alt^a, d: delta) - partial_mu dv(cal(L), (partial_mu phi.alt^a), d: delta)] delta phi.alt^a approx 0 => partial_mu J_r^mu approx 0 $
Charge $ Q_r [N] = integral_N * J_r = integral_N J_r^mu n_mu sqrt(g) dif^(d - 1) x $

$
  Q_r [N_f] - Q_r [N_i] = integral_(N_f) * J_r - integral_(N_i) * J_r = integral_(partial M') * J_r = integral_(M') dif * J_r = 0
$
- _$Q_r [N]$ depends on the choice of $N$ only through its homology class._

Examples for $N$:

+ Canonical quantization of the worldsheet CFT in string theory, $M = SS^1 times [0, T]$
+ Minkowski space-time $M = RR^(1, 3)$, where constant time slices are non-compact, so for our derivation to hold we should ensure that the current $J$ decays sufficiently rapidly as we head towards spatial infinity, which also ensures that the integrals defining $Q$ converge.

== Symmetries of the effective action

Change of the path integral measure under the transformation of fields $ cal(D) phi.alt' = & cal(D) phi.alt det (dv(phi.alt'(x), phi.alt(y), d: delta)) \
= & cal(D) det (dv(, phi.alt^b (y), d: delta) (phi.alt^a + epsilon.alt^r f_r^a (phi.alt, partial phi.alt))) \
= & cal(D) det (tensor(delta, a, -b) delta^d (x - y) + epsilon.alt^r dv(f_r^a (phi.alt, partial phi.alt), phi^b (y), d: delta)) \
= & cal(D) (1 + tr (epsilon.alt^r dv(f_r^a (phi.alt, partial phi.alt), phi^b (y), d: delta))) $

Infinitesimal transformation that leaves the product of the action and regularized path integral measure invariant $ cal(D) phi.alt' upright(e)^(- S[phi.alt'] \/ planck) = cal(D) phi.alt upright(e)^(- S[phi.alt] \/ planck) $

Partition function with sources $J_a$ $ cal(Z)[J] = & integral cal(D) phi.alt' exp [- 1 / planck (S[phi.alt'] + integral_M J_a phi.alt'^a dif^d x)] \
= & integral cal(D) phi.alt exp [- 1 / planck (S[phi.alt] + integral_M J_a phi.alt^a dif^d x + integral_M J_a epsilon.alt^r f_r^a (phi.alt, partial phi.alt) dif^d x)] \
= & integral cal(D) phi.alt (1 - epsilon.alt^r / planck integral_M J_a f_r^a (phi.alt, partial phi.alt) dif^d x + ...) exp [- 1 / planck (S[phi.alt] + integral_M J_a phi.alt^a dif^d x)] \
= & cal(Z)[J] (1 - epsilon.alt^r / planck integral_M J_a expval(f_r^a (phi.alt, partial phi.alt))_J dif^d x + ...) $

$
  0 = integral_M J_a expval(f_r^a (phi.alt, partial phi.alt))_J dif^d x = integral_M expval(f_r^a (phi.alt, partial phi.alt))_(J_Phi) dv(Gamma [Phi], Phi^a, d: delta) dif^d x
$

Slavnov-Taylor identity: 1PI quantum effective action $Gamma [Phi^a]$ is invariant under the transformation $Phi^a -> Phi'^a = Phi^a + epsilon.alt^r expval(f_r^a (phi.alt, partial phi.alt))_(J_Phi)$.

Linear transformation $ f_r^a (phi.alt) = & c_r^a (x) + integral_M tensor(e, (0), -r, a, -b) (x, y) phi.alt^b (y) dif^d y + sum_m integral_M tensor((tensor(e, -r, mu_1, mu_2, ..., mu_m)), a, -b) (x, y) partial_(mu_1) partial_(mu_2) ... partial_(mu_m) phi.alt^b (y) dif^d y \
= & c_r^a (x) + integral_M tensor(d, -r, a, -b) (x, y) phi.alt^b (y) dif^d y \
=> expval(f_r^a (phi.alt))_(J_Phi) = & c_r^a + integral_M tensor(d, -r, a, -b) (x, y) expval(phi.alt^b (y))_(J_Phi) dif^d y \
= & c_r^a + integral_M tensor(d, -r, a, -b) (x, y) Phi^b (y) dif^d y \
= & f_r^a (Phi) \
=> 0 = & integral_M f_r^a (Phi, partial Phi) dv(Gamma [Phi], Phi^a, d: delta) dif^d x $ 1PI quantum effective action $Gamma [Phi^a]$ is invariant under the transformation $Phi^a -> Phi'^a = Phi^a + epsilon.alt^r f_r^a (Phi, partial Phi)$.

- If quantum effective action is invariant under the same symmetry as the classical action, then it cannot have been possible to generate terms which violate these symmetries through quantum effects such as loop diagrams. Examples:
+ Scalar field $ S[phi.alt] = integral [1 / 2 (partial phi.alt)^2 + m^2 / 2 phi.alt^2 + lambda / 4! phi.alt^4] dif^d x $ with $ZZ_2$ transformation $phi.alt |-> - phi.alt$
+ $n$ scalar fields $ S[phi.alt^a] = integral [1 / 2 delta_(a b) partial^mu phi.alt^a partial_mu phi.alt^b + m^2 / 2 delta_(a b) phi.alt^a phi.alt^b + lambda (delta_(a b) phi.alt^a phi.alt^b)^2] dif^d x $ with $O(n)$ transformation $ phi.alt^a |-> phi.alt'^a = tensor(R, a, -b) phi.alt^b, tensor(R, a, -b) in O(n) $
+ QED $ S_"QED" [A, psi] = integral_(RR^d) [1 / (4 e^2) F^(mu nu) F_(mu nu) + macron(psi) (cancel(D) + m) psi] dif^d x $ with $S O(d)$ transformation $ & x^mu |-> x'^mu = tensor(L, mu, -nu) x^nu \
  => & A_mu (x) |-> A'_mu (x') = tensor((L^(-1)), -mu, nu) A_nu (L^(-1) x), psi^a (x) |-> psi'^a (x') = tensor(S, alpha, -beta)(L) A^beta (L^(-1) x), S(L) = exp (upright(i) L_(mu nu) [gamma^mu, gamma^nu] \/ 4) $

=== Regulators and symmetry

Regularize to turn our path integral turning into a finite dimensional integral. From simple to complex:

+ It's possible to regularize the theory in a way compatible with the classical symmetry. Example: cut-off regularization or dimensional regularization of a $S O(d)$ invariant classical theory, where the quantum effective action is indeed guaranteed to be $S O(d)$ invariant, even whilst we keep the regulator finite (finite cut-off $Lambda_0$ or non-integer dimension $d != 4$).
+ It's also possible that, even though regulators which preserve the classical symmetry exist, for some reason we choose to regularize in a way that violates the symmetry. The path integral measure, the counterterms and the regularized theory will not respect the symmetry of the classical action. Example: lattice regularization of the scalar field $ S [phi.alt] = & integral_(T^d) [1 / 2 partial^mu phi.alt partial_mu phi.alt + V(phi)] dif^d x \
  S_Lambda [phi.alt] = & sum_(bold(x) in Lambda) (1 / 2 sum_(mu = 1)^d ((phi.alt (bold(x) + a hat(bold(mu))) - phi.alt (bold(x))) / (a))^2 + V(phi.alt(bold(x)))) $ The quantum effective action with finite lattice spacing $a$ will be invariant under the discrete subgroup $G subset S O(d)$ corresponding to the symmetries of the lattice. However the full $S O(d)$ invariance is restored in the continuum limit.
+ It's possible that no regularization procedure which preserves the classical symmetry exists. In this case, the classical symmetry is simply not present in the quantum theory and is said to be anomalous. Example: conformal anomaly of QED in 4D $ S[A, psi] = integral_(RR^4) [1 / (4 e^2) F^(mu nu) F_(mu nu) + macron(psi) cancel(nabla) psi] dif^4 x $ with conformal transformation#footnote[Note that $delta^(mu nu) |-> upright(e)^(- 2 sigma) delta^(mu nu), F^(mu nu) F_(mu nu) |-> upright(e)^(- 4 sigma) F^(mu nu) F_(mu nu)$.] $ delta_(mu nu) |-> upright(e)^(2 sigma) delta_(mu nu), sqrt(delta) dif^4 x |-> upright(e)^(4 sigma) sqrt(delta) dif^4 x, gamma^mu |-> upright(e)^(- sigma) gamma^mu, A_(mu)(x) -> A_mu (x), psi(x) -> upright(e)^(- 3 sigma \/ 2) psi(x) $

== Ward-Takahashi identities

Ward-Takahashi identity: $ expval(cal(O)_1(phi.alt (x_1)) ... cal(O)_n (phi.alt (x_n))) = & integral cal(D) phi.alt upright(e)^(- S[phi.alt] \/ planck) cal(O)_1(phi.alt (x_1)) ... cal(O)_n (phi.alt (x_n)) \
= & integral cal(D) phi.alt' upright(e)^(- S[phi.alt'] \/ planck) cal(O)_1(phi.alt' (x_1)) ... cal(O)_n (phi.alt' (x_n)) \
= & integral cal(D) phi.alt upright(e)^(- S[phi.alt] \/ planck) cal(O)_1(phi.alt' (x_1)) ... cal(O)_n (phi.alt' (x_n)) \
= & expval(cal(O)_1(phi.alt' (x_1)) ... cal(O)_n (phi.alt' (x_n))) $ Example:
+ Conplex scalat field $ S[phi.alt] = integral_M 1 / 2 dif macron(phi.alt) and * dif phi.alt + * V (abs(phi.alt)^2) $ with phase transformation $ phi.alt |-> phi.alt' = upright(e)^(upright(i) alpha) phi.alt, macron(phi.alt) |-> macron(phi.alt)' = upright(e)^(- upright(i) alpha) macron(phi.alt) $ Ward-Takahashi identity gives selection rule of local opertaors $cal(O)_i = phi.alt^(r_i) macron(phi.alt)^(s_i)$ $ expval(cal(O)_1(x_1) ... cal(O)_n (x_n)) = upright(e)^(upright(i) alpha sum_(i = 1)^n (r_i - s_i)) expval(cal(O)_1(x_1) ... cal(O)_n (x_n)) => sum_i r_i = sum_i s_i $
+ $(M, g) = (RR^d, delta)$, with space-time translation $x |-> x' = x - a$ Ward-Takahashi identity restricts the form of the correlation function $ expval(cal(O)_1(x_1) ... cal(O)_n (x_n)) = expval(cal(O)_1(x_1 - a) ... cal(O)_n (x_n - a)) = f(x_i - x_j); $ with $S O(d)$ transformation $x |-> L x$ Ward-Takahashi identity restricts again the form of the correlation function $ expval(cal(O)_1(x_1) ... cal(O)_n (x_n)) = expval(cal(O)_1(L x_1) ... cal(O)_n (L x_n)) = f((x_i - x_j)^2); $

=== Current conservation in QFT

- We can obtain more powerful constraints on correlation functions if our symmetry transformation does not just preserve the action, but the Lagrangian density $cal(L)(x)$ itself.

Symmetric transformation of fields $ phi.alt |-> phi.alt' = phi.alt + epsilon.alt^r (x) f_r (phi.alt, partial phi.alt) + cal(O)(epsilon.alt^2) $
Transformation of the Lagrangian and path integral measure $ cal(Z) = & integral cal(D) phi.alt upright(e)^(- S[phi.alt] \/ planck) = integral cal(D) phi.alt' upright(e)^(- S[phi.alt'] \/ planck) \
= & integral cal(D) phi.alt upright(e)^(- S[phi.alt] \/ planck) [1 - integral_M *j_r and dif epsilon.alt^r] + cal(O)(epsilon.alt^2) $ $ => 0 = - integral_M *expval(j_r) and dif epsilon.alt^r = integral_M epsilon.alt^r dif * expval(j_r) => 0 = dif * expval(j_r) $

Transformation of local operators $ cal(O)(phi.alt) |-> cal(O)(phi.alt + epsilon.alt^r (x) f_r (phi.alt, partial phi.alt)) = cal(O)(phi.alt) + epsilon.alt^r delta_r cal(O) + cal(O)(epsilon.alt^2), quad delta_r cal(O) := pdv(cal(O), phi.alt) f_r (phi.alt, partial phi.alt) $

Change of the correlation function $ integral cal(D) phi.alt upright(e)^(- S[phi.alt] \/ planck) product_(i = 1)^n cal(O)_i (phi.alt (x_i)) = & integral cal(D) phi.alt' upright(e)^(- S[phi.alt'] \/ planck) product_(i = 1)^n cal(O)_i (phi.alt' (x_i)) \
= & integral cal(D) phi.alt upright(e)^(- S[phi.alt] \/ planck) [1 - integral_M *j_r and dif epsilon.alt^r] [product_(i = 1)^n cal(O)_i (x_i) + sum_(i = 1)^n epsilon.alt^r (x_i) delta_r cal(O)_i (x_i) product_(j != i) cal(O)_j (x_j)] + cal(O)(epsilon.alt^2) $ $ => integral_M epsilon.alt^r (#text(fill: red)[$x$]) and dif * expval(j_r (x) product_(i = 1)^n cal(O)_i (x_i)) = & - sum_(i = 1)^n expval(epsilon.alt^r (#text(fill: red)[$x_i$]) delta_r cal(O)_i (x_i) product_(j != i) cal(O)_j (x_j)) \
= & - integral_M * sum_(i = 1)^n delta^d (x - x_i) expval(epsilon.alt^r (x) delta_r cal(O)_i (x_i) product_(j != i) cal(O)_j (x_j)) \
=> dif * expval(j_r (x) product_(i = 1)^n cal(O)_i (x_i)) = & - * sum_(i = 1)^n delta^d (x - x_i) expval(delta_r cal(O)_i (x_i) product_(j != i) cal(O)_j (x_j)) $

If $M$ is compact $ expval(delta_r cal(O)_i (x_i) product_(j != i) cal(O)_j (x_j)) = 0 $

Example: QED
+ Transformation with constant parameter $alpha$ $ psi |-> psi' = upright(e)^(upright(i) alpha) psi, macron(psi) |-> macron(psi)' = macron(psi) upright(e)^(- upright(i) alpha), A_mu |-> A'_mu = A_mu $ $ S_"QED" [A, psi] = integral dif^4 x [1 / (4 e^2) F^(mu nu) F_(mu nu) + macron(psi) (cancel(nabla) + m) psi] |-> S_"QED" [A', psi'] = S_"QED" [A, psi] \
  cal(D) psi cal(D) macron(psi) cal(D) A |-> cal(D) psi' cal(D) macron(psi)' cal(D) A' = cal(D) psi cal(D) macron(psi) cal(D) A $
+ Transformation with position-dependent parameter $alpha(x)$ $ psi(x) |-> psi' = upright(e)^(upright(i) alpha(x)) psi(x), macron(psi)(x) |-> macron(psi)' = macron(psi)(x) upright(e)^(- upright(i) alpha(x)), A_mu (x) |-> A'_mu (x) = A_mu (x), $ which is not the gauge transformation $ S_"QED" [A, psi] |-> S_"QED" [A', psi'] != S_"QED" [A, psi], quad cal(D) psi cal(D) macron(psi) cal(D) A |-> cal(D) psi' cal(D) macron(psi)' cal(D) A' = cal(D) psi cal(D) macron(psi) cal(D) A. $
  Infinitesimal transformation $delta psi (x) = upright(i) alpha (x) psi (x), delta macron(psi) (x) = - upright(i) macron(psi) (x) alpha (x)$, Ward-Takahashi identity $ partial_mu expval(j^mu (x) psi(x_1) macron(psi)(x_2)) = - upright(i) delta^d (x - x_1) expval(psi(x_1) macron(psi)(x_2)) + upright(i) delta^d (x - x_2) expval(psi(x_1) macron(psi)(x_2)), quad j^mu = upright(i) macron(psi) gamma^mu psi $ Fourier transform $ (k_1 - k_2)_mu Gamma^mu (k_1, k_2) = upright(i) S^(-1)(k_2) - upright(i) S^(-1) (k_1) => Gamma_mu (k, k) = - upright(i) pdv(, k^mu) S^(-1)(k) = gamma_mu + upright(i) pdv(, k^mu) Sigma (cancel(k)), $ here we have used $S^(-1)(k) = upright(i) cancel(k) + m - Sigma(cancel(k))$.

== Emergent symmetries

It's often the case that these few relevant and marginal operators are invariant under a wider range of field transformations than a generic, irrelevant operator would be. = The effects of irrelevant operators are strongly suppressed at low energies, making it appear as though the theory has the larger symmetry group. = Symmetry can be emergent in the low-energy
theory, even if not it is present in the microscopic theory.

Example: (Lepton number conservation in SM)
The only relevant and marginal operators of the most general Lorentz- and gauge-invariant Lagrangian for a theory of electromagnetism coupled to several generations of charged fermions $psi_i, psi_(L i) = (1 + gamma_5) psi_i \/ 2, psi_(R i) = (1 - gamma_5) psi_i \/ 2$ $ cal(L) [A, psi_i] = & 1 / (4 e^2) Z_3 F^(mu nu) F_(mu nu) + sum_(i, j) [(Z_L)_(i j) macron(psi)_(L j) cancel(D) psi_(L i) + (Z_R)_(i j) macron(psi)_(R j) cancel(D) psi_(R i) + M_(i j) macron(psi)_(L i) psi_(R j) + macron(M)_(i j) macron(psi)_(R i) psi_(L j)], $

After complex matrix diagonalization and field redefinition, $ cal(L)[A, psi_i] = & 1 / (4 e^2) Z_3 F^(mu nu) F_(mu nu) + sum_i (macron(psi)_(L i) cancel(D) psi_(L i) + macron(psi)_(R i) cancel(D) psi_(R i) + m_i macron(psi)_(L i) psi_(R i) + m_i macron(psi)_(R i) psi_(L i)) \
= & 1 / (4 e^2) Z_3 F^(mu nu) F_(mu nu) + sum_i macron(psi)_i (cancel(D) + m_i) psi_i $ Lepton number conservation is merely an accidental property of the Standard Model valid only at low-energies. Interaction that would violate these individual lepton numbers such as $Y_(i j k l) macron(psi)_i gamma^mu psi_j macron(psi)_k gamma_mu psi_l$ are suppressed in the low-energy effective action.

- E.~Witten, "Symmetry and Emergence," Nature Phys. *14* (2018) no.2, 116-119 doi:10.1038/nphys4348 [arXiv:1710.01791 [hep-th]].
- D.~Harlow and H.~Ooguri, "Symmetries in quantum field theory and quantum gravity," Commun. Math. Phys. *383* (2021) no.3, 1669-1804, doi:10.1007/s00220-021-04040-y [arXiv:1810.05338 [hep-th]].
