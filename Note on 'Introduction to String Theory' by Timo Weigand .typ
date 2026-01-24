// #import "@local/article:0.0.0": *
// #show: article

#set heading(numbering: "1.1")
#set math.equation(numbering: "(1.1)")
#set page(numbering: "1")

https://web.archive.org/web/20160226230209/http://www.thphys.uni-heidelberg.de/~weigand/Strings-2015.html

#counter(heading).update(1)
= The classical bosonic string

== The relativistic point particle

/ P9: Worldline, Nambu-Goto action,
/ P10: Reparametrization invariance/local diffeomorphism invariance of the N-G action, Canonical momentum, Equation of motion of N-G action $dot.double(X) = 0$
/ P11: Constraint of N-G action $dot(X)^2 = -1$, Polyakov action with Local diffeomorphism invariance and EOM $dot.double(X) = 0 \& dot(X)^2 in {-1, 0}$ in fact, worldline metric

== The bosonic string action

=== Nambu-Goto action

/ P12: Worldsheet, ambient spacetime
/ P13: Nambu-Goto action, Induced metric $G_(a b)$/Pullback of the ambient spacetime metric $eta_(mu nu)$ onto worldsheet

=== The Polyakov action

/ P13: Worldsheet metric $h_(a b)$, Polyakov action
/ P14: Cosmological constant term, Euler characteristic
/ P15: Energy momentum tensor/EOM for Worldsheet metric, Traceless, Conserved

=== Symmetries of the Polyakov action

/ P16: Spacetime symmetries: Poincaré invariance, Worldsheet symmetries: Local diffeomorphism invariance, Local Weyl invariance
/ P17: Conformal Killing vectors, Conserved quantities via Noether's theorem
  - Spacetime invariance: Global Poincaré-invariance of spacetime $->$ conservation of the energy-momentum current, Invariance under global Lorentz transformation $->$ conservation of the angular momentum current
/ P18: - Worldsheet symmetries: Local worldsheet diffeomorphism invariance $->$ Convservation of the energy-momentum tensor, Weyl invariance $->$ Tracelessness of the energy-momentum tensor
  - Conformal Killing vector $->$ Conserved current

=== Flat worldsheet coordinates

/ P19: Conformal gauge, Flat gauge, Lightcone coordinates
/ P20: The Polyakov action in lightcone gauge#footnote[In my opinion, lightcone guage = flat gauge + lightcone coordinates]: action, energy momentum tensor(traceless, conservation), constraint, residual symmetry, Conformal Killing transformations
/ P21: (Conformal Killing vector $->$ Conserved current) in lightcone gauge

=== Hamiltonian formalism

/ P21: Canonical fields, Conjugate momenta, Hamiltonian, Poisson brackets
  - The Poisson brackets of the conserved charges generate the associated symmetries.

== Oscillator expansions

=== Equations of motion and boundary conditions

/ P22: ($tau$ and) $sigma$ boundary conditions ($lr(integral dif sigma partial_tau X dot delta X|)_(tau = - infinity)^(tau = infinity)$ and) $lr(integral dif tau partial_sigma X dot delta X|)_(sigma = 0)^(sigma = ell)$
  - Closed string: periodic boundary conditions $ X^mu (tau, sigma = 0) = X^mu (tau, sigma = ell) $
  - Open string
    - Neumann boundary conditions $lr(partial_sigma X^mu|)_(sigma = 0 "and/or" ell) = 0$
    - Dirichlet boundary conditions $lr(delta X^mu|)_(sigma = 0 "and/or" ell) = 0 => lr(dot(X)^mu|)_(sigma = 0 "and/or" ell) = 0$ or $lr(X^mu|)_(sigma = 0 "and/or" ell) = "constant"$

=== Closed string expansion

/ P23: A left- and a right-moving wave, Fourier expansion(with boundary conditions considered)
/ P24: Poisson brackets of Fourier coefficients#footnote[Fourier coefficients = modes], Hamiltonian

=== Open string expansion

/ P25\~26: - NN boundary conditions: general solution, coefficients, Poisson brackets, Hamiltonian
  - DD boundary conditions: general solution, Hamiltonian(with tension)
  - ND boundary conditions: general solution, half-integer Fourier modes

=== The concept of D-branes

=== The Virasoro generators

/ P28\~29: Closed string
  - Conformal Killing vector $->$ Conserved current & Noether charge
  - Virasoro generators: Fourier expansions of Noether charge, the generators of the conformal Killing transformations
  - Poisson brackets $->$ Witt algebra \ #quote[Indeed this connection between the Poisson bracket relations of the Noether charges of a symmetry and the Lie algebra relations of its generators holds very generally.]
  - Hamiltonian
- Virasoro constraints $T_(a b) approx 0 => L_m approx 0 approx tilde(L)_m forall m => H approx 0 =>$ spacetime mass shell relation
/ P30: Open string: Virasoro generators, Poisson brackets $->$ Witt algebra, Virasoro constraints $->$ Hamiltonian $->$ open string mass shell relation

= Quantisation of the bosonic string

== Old canonical quantisation

=== Canonical quantisation

/ P31\~32: Canonical commutation relations: from fields to modes, normal ordering, Virasoro operators, normal ordering constant

=== The quantum Virasoro algebra

/ P32: Virasoro algebra
/ P33: Central charge

=== Fock space

/ P33\~34: Harmonic oscillator
/ P34: Creation/annihilation operators, Ground state, Polarisation tensor, negative norm states/"ghosts"
/ P35: (Quantum Virasoro constraints:) Open string $(L_m - a delta_(m, 0)) |phi chevron.r = 0 forall m >= 0$/Closed string, Level matching
/ P36: Mass shell condition
  - Open string: NN + DD + ND/DN, number operator, Level-zero Virasoro constraint $->$ Mass spectrum
  - Closed string: Level matching, Level-zero Virasoro constraint $->$ Mass spectrum

== Explicit open (NN) Fock space and criticality#footnote[This subsubsection verifies explicitly that the quantum Virasoro constraints are satisfied by the physical states constructed by the creation/annihilation operators.]

/ P36\~37: Vacuum($N = 0$): The verification requires the expression of Virasoro generators expanded by creation/annihilation operators and canonical commutation relations between creation/annihilation operators.
/ P37\~38: First excited level($N = 1$): The verification requires canonical commutation relations between Virasoro generators and creation/annihilation operators.
  - Mass
  - Orthogonality between the polarisation vector and momentum
  - $a > = < 1$
/ P39: Criticality in OCQ, Tachyon

== Lightcone quantisation(LCQ)

=== Lightcone gauge(LCG)

/ P40: Lightcone coordinates for spacetime, $tau ~ X^+ = (2 pi alpha) / ell p^+ tau + x^+$
/ P41: Virasoro constraints $->$ $X^- = ..., alpha^-_n = ..., tilde(alpha)^-_n = ...$

=== Quantisation in LCG

/ P41\~42: Canonical commutation relations, Mass shell condition for open NN and closed string #footnote[_David Tong_ has a more straightforward derivation of the mass spectrum of the closed string.]
/ P43\~45: Criticality: Lorentz algebra
#linebreak()
/ P45\~48: Normal ordering constant "a" as a Casimir energy: Vacuum energy, Cutoff regularisation, Casimir energy, $zeta$-function regularisation
/ P48\~51: Open string spectrum along D-branes: little group, A single D$p$-brane & Parallel D$p$-brane & Coincident D$p$-branes

#counter(heading).update((3, 2, 4))
=== Closed string spectrum

/ P51\~53: Level-matching condition/mass-shell condition, Ground states(Tachyon), massless first excited level(Graviton + Kalb-Ramond field + Dilaton)

== Modern covariant quantisation

=== The Polyakov Path integral

/ P53\~54: Feynman path integral
/ P54\~55: Faddeev-Popov gauge fixing: Jacobian = F-P determinant #footnote[The procedures of gauge fixing in _David Tong_, _Peskin&Schroeder_, _Polchinski_ seems to be more concise, avoiding the analysis of determinants of operators.]
/ P56: Grassmann/anti-commuting/fermionic variables
/ P57: F-P ghost and anti-ghost

=== Quantisation of the bc-system

/ P57\~5: Flat lightcone coordinates: action, EOM, boundary conditions, mode expansion
  - Closed string: periodic boundary conditions $b(sigma + ell) = b(sigma), c(sigma + ell) = c(sigma)$
  - Open string: $ lr(c^+(xi^+)|)_(sigma = 0, ell) = lr(c^-(xi^-)|)_(sigma = 0, ell) => & lr(c^1(tau, sigma)|)_(sigma = 0, ell) = 0 \
    lr(b_(++)(xi^+)|)_(sigma = 0, ell) = lr(b_(--)(xi^-)|)_(sigma = 0, ell) => & lr(b_01 (tau, sigma)|)_(sigma = 0, ell) = 0 $
/ P59: Quantisation: conjugate momentum, Poisson brackets, anti-commutator relations for the modes
/ P59\~60: Ghost Virasoro algebra: ghost-energy momentum tensor(in lightcone gauge), Virasoro generators(expressed in modes), ghost Virasoro algebra
/ P60\~61: Normal ordering constant, Central charge, Criticality

=== BRST Quantisation

/ P61: Global fermionic residual symmetry(BRST symmetry)
/ P62\~63: BRST charge operator(expressed in Virasoro generators), nilpotent, Physical state, BRST cohomology
/ P64\~66: Physical state further

#counter(heading).update(5)
= Superstring theory

#quote[There exist two major formulations of this superstring theory. Both theories enjoy supersymmetry on the worldsheet and in spacetime, but they differ in the following respect:
  - In the *Ramond-Neveu-Schwarz (RNS)* formulation, supersymmetry is _manifest_ on the worldsheet, but not in spacetime.
  - In the *Green-Schwarz (GS)* formulation, supersymmetry is _manifest_ in spacetime, but not on the worldsheet.
]

== The classical RNS action <classicalRNSaction>

/ P129: $gamma$-matrices in 2D, spinors, RNS action

$gamma$-matrices in 2D: $ gamma^0 = mat(0, 1; -1, 0), quad gamma^1 = mat(0, 1; 1, 0) => gamma = gamma^0 gamma^1 = mat(1, 0; 0, -1) $
$gamma$-matrices in 2D lightcone coordinates: $ gamma^+ = gamma^0 (partial xi^+)/(partial tau) + gamma^1 (partial xi^+)/(partial sigma) = mat(0, 2; 0, 0), quad gamma^- = gamma^0 (partial xi^-)/(partial tau) + gamma^1 (partial xi^-)/(partial sigma) = mat(0, 0; -2, 0) $

Anti-commutation relations/Clifford algebra in 2D $ {gamma^alpha, gamma^beta}_(A B) = 2 eta^(alpha beta) bb(1)_(A B) $ where $alpha, beta in {0, 1}$ are Lorentz indices on the worldsheet and $A, B in {1, 2}$ are spinor indices on the worldsheet, i.e. the indices of the component of the matrices. $ {gamma^0, gamma^0} = 2 (gamma^0)^2 = 2 bb(1), quad {gamma^1, gamma^1} = 2 (gamma^1)^2 = 2 bb(1), quad {gamma^0, gamma^1} = 0 $

- Spinors $ psi^mu_A = mat(psi^mu_+; psi^mu_-), quad macron(psi)^mu_A = psi^(mu dagger)_A gamma^0 = mat(psi^(mu *)_+, psi^(mu *)_-) mat(0, 1; -1, 0) = mat(- psi^(mu *)_-, psi^(mu *)_+), $ where $mu, nu in {0, ..., d - 1}$ are Lorentz indices in the spacetime.
- Majorana spinors: reality $ psi^(mu *) = mat(psi^mu_+; psi^mu_-)^* = mat(psi^(mu *)_+; psi^(mu *)_-) equiv psi = mat(psi^mu_+; psi^mu_-) => psi^(mu *)_+ = psi^mu_+, quad psi^(mu *)_- = psi^mu_- $
- Weyl spinors: chirality $ gamma mat(psi^mu_+; 0) = mat(1, 0; 0, -1) mat(psi^mu_+; 0) = mat(psi^mu_+; 0), quad gamma mat(0; psi^mu_-) = mat(1, 0; 0, -1) mat(0; psi^mu_-) = - mat(0; psi^mu_-) $ <WorldsheetWeylspinors>
#quote[Majorana-Weyl spinors exist in 2 mod 8 dimensions.]

RNS action in flat gauge $ S_"RNS" = & S_"B" + S_"F" \
S_"B" = & - 1 / (8 pi) integral dif^2 xi 2 / alpha' partial_alpha X^mu partial^alpha X_mu \
= & 1 / (2 pi) integral dif^2 xi 2 / alpha' partial_+ X dot partial_- X \
S_"F" = & - 1 / (8 pi) integral dif^2 xi 2 upright(i) macron(psi)^mu_A gamma^alpha_(A B) partial_alpha psi_(mu B) \
= & - 1 / (8 pi) integral dif^2 xi 2 upright(i) mat(- psi^mu_-, psi^mu_+) mat(0, 2 partial_+; -2 partial_-, 0) mat(psi_(mu +); psi_(mu -)) \
= & 1 / (2 pi) integral dif^2 xi upright(i) (psi_+ dot partial_- psi_+ + psi_- dot partial_+ psi_-) $

/ P130\~131: Dirac equation, SUSY

Dirac equation $ 0 = gamma^alpha_(A B) partial_alpha psi_(mu B) = mat(2 partial_+ psi_(mu -); -2 partial_- psi_(mu +)) => 0 = partial_+ psi_(mu -) = partial_- psi_(mu +) => psi_(mu +) = psi_(mu +)(xi_+), quad psi_(mu -) = psi_(mu -)(xi_-) $

Fermionic symmetry/supersymmetry(SUSY) $ sqrt(2 / alpha') delta X^mu = & upright(i) macron(epsilon.alt)_A psi^mu_A = upright(i) mat(- epsilon.alt_-, epsilon.alt_+) mat(psi^mu_+; psi^mu_-) = upright(i) (- epsilon.alt_- psi^mu_+ + epsilon_+ psi^mu_-) \
delta psi^mu_A = & sqrt(2 / alpha') 1 / 2 gamma^alpha_(A B) partial_alpha X^mu epsilon.alt_B = sqrt(2 / alpha') 1 / 2 mat(0, 2 partial_+ X^mu; -2 partial_- X^mu, 0) mat(epsilon.alt_+; epsilon.alt_-) = sqrt(2 / alpha') mat(epsilon.alt_- partial_+ X^mu; epsilon.alt_+ partial_- X^mu) $ where the infinitesimal Majorana spinor $epsilon.alt equiv epsilon.alt_A$ obey $ gamma^beta gamma_alpha partial_beta epsilon.alt (xi) = 0 => partial_+ epsilon.alt_+ = 0, quad partial_- epsilon.alt_- = 0. $ On-shell supersymmetry: It is relatively easy to verify that the RNS action remains invariant under this symmetry in the lightcone coordinate. There remains some subtleties about the invariance of the RNS action under local supersymmetry and whether no-shell conditions are needed. See Sec. 10.1.1 in 弦理论基础 by 黄晨.

- https://janosh.dev/_app/immutable/assets/exam-sol.Dca5Bgby.pdf

#quote[In such a superspace formulation the supersymmetry holds off-shell, i.e. without use of the equations of motion]

== Super-conformal invariance

- Worldsheet scalars $stretch(->)^"SUSY"$ worldsheet fermions
- Dynamical worldsheet metric/local diffeomorphism invariance $stretch(->)^"SUSY/SUGRA"$ gravitino/local supersymmetry

/ P131\~132: Gauge fixing in SUGRA:
+ Local super-Weyl and diffeomorphism invariance with unconstrained supersymmetry parameter
+ Remnant super-conformal symmetry after fixing the gauge
+ Generators/conserved currents of the super-conformal symmetry:
  - Energy-momentum-tensor: symmetric, traceless, conserved
  - Supercurrent: $ delta_"SUSY" S = integral dif^2 xi (partial_a macron(epsilon.alt)) J^alpha, quad J_plus.minus = - 1 / 2 sqrt(2 / alpha') psi^mu_plus.minus partial_plus.minus X_mu => partial_- J_+ = 0, quad partial_+ J_- = 0 $
+ Generalised constraint equations: super-conformal Virasoro constraints $ T_(plus.minus plus.minus) approx 0, quad J_plus.minus approx 0 $

== Mode expansions: Ramond vs. Neveu-Schwarz

/ P132: Boundary term in the variation of fermionic action $ S_"F" = & upright(i) / (2 pi) integral dif^2 xi (psi_+ partial_- psi_+ + psi_- partial_+ psi_-) \
  delta S_"F" = & upright(i) / (2 pi) integral dif^2 xi (delta psi_+ partial_- psi_+ + psi_+ partial_- delta psi_+ + delta psi_- partial_+ psi_- + psi_- partial_+ delta psi_-) \
  = & upright(i) / (2 pi) integral dif^2 xi [partial_- (psi_+ delta psi_+) + partial_+ (psi_- delta psi_-)] + 1 / (pi upright(i)) integral dif^2 xi (partial_- psi_+ delta psi_+ + partial_+ psi_- delta psi_-) \
  approx & upright(i) / (2 pi) integral dif^2 xi [((partial tau)/(partial xi^-) partial/(partial tau) + (partial sigma)/(partial xi^-) partial/(partial sigma)) (psi_+ delta psi_+) + ((partial tau)/(partial xi^+) partial/(partial tau) + (partial sigma)/(partial xi^+) partial/(partial sigma)) (psi_- delta psi_-)] \
  = & upright(i) / (4 pi) integral dif tau dif sigma [(partial/(partial tau) - partial/(partial sigma)) (psi_+ delta psi_+) + (partial/(partial tau) + partial/(partial sigma)) (psi_- delta psi_-)] \
  = & [upright(i) / (4 pi) integral dif sigma (psi_+ delta psi_+ + psi_- delta psi_-)]_(tau = tau_i)^(tau = tau_f) \
  & + [upright(i) / (4 pi) integral dif tau (psi_+ delta psi_+ - psi_- delta psi_-)]_(sigma = 0)^(sigma = ell) $

- The $tau$-boundary term at $tau in {tau_i, tau_f}$ vanishes by the assumption $ lr(delta psi_+|)_(tau = tau_i, tau_f) = lr(delta psi_-|)_(tau = tau_i, tau_f) = 0. $

#heading(depth: 3, outlined: false)[Closed sector]

/ P133: Mode expansion of the closed string
$
  lr(psi_+ delta psi_+ - psi_- delta psi_-|)_(sigma = 0) approx lr(psi_+ delta psi_+ - psi_- delta psi_-|)_(sigma = ell) \
  => psi_plus.minus (sigma + ell) = upright(e)^(2 pi upright(i) phi.alt_plus.minus) psi_plus.minus (sigma)
$

- The Ramond sector corresponds to periodic boundary conditions with integer mode
expansion: $phi.alt = 0$ $ psi^mu_- (tau, sigma) = & sum_(n in ZZ) sqrt((2 pi) / ell) b^mu_n upright(e)^(- (2 pi) / ell upright(i) n (tau - sigma)) \
psi^mu_+ (tau, sigma) = & sum_(n in ZZ) sqrt((2 pi) / ell) tilde(b)^mu_n upright(e)^(- (2 pi) / ell upright(i) n (tau + sigma)) $
- The Neveu-Schwarz sector corresponds to anti-periodic boundary conditions with
half-integer mode expansion: $phi.alt = 1 / 2$ $ psi^mu_- (tau, sigma) = & sum_(r in ZZ + 1 / 2) sqrt((2 pi) / ell) b^mu_n upright(e)^(- (2 pi) / ell upright(i) r (tau - sigma)) \
psi^mu_+ (tau, sigma) = & sum_(r in ZZ + 1 / 2) sqrt((2 pi) / ell) tilde(b)^mu_n upright(e)^(- (2 pi) / ell upright(i) r (tau + sigma)) $
$ (phi.alt_+, phi.alt_-) in {(0, 0), (1 / 2, 1 / 2), (1 / 2, 0), (0, 1 / 2)} $

#heading(depth: 3, outlined: false)[Open sector]

/ P134: Mode expansion of the open string

$ lr(psi^mu_+ (sigma)|)_(sigma = 0, ell) = plus.minus lr(psi^mu_- (sigma)|)_(sigma = 0, ell) $

- For the direction $mu$ with NN boundary condition for $X^mu$, by convention $ lr(psi^mu_+ (sigma)|)_(sigma = 0) = lr(psi^mu_- (sigma)|)_(sigma = 0), quad lr(psi^mu_+ (sigma)|)_(sigma = ell) = eta lr(psi^mu_- (sigma)|)_(sigma = ell), eta = plus.minus 1 $
  - The Ramond sector corresponds to periodic boundary conditions with integer modes: $eta = 1$ $ psi^mu_plus.minus (tau, sigma) = sqrt(pi / ell) sum_(n in ZZ) b^mu_n upright(e)^(- pi / ell upright(i) n (tau plus.minus sigma)) $
  - The Neveu-Schwarz sector corresponds to anti-periodic boundary conditions and half- integer modes: $eta = -1$ $ psi^mu_plus.minus (tau, sigma) = sqrt(pi / ell) sum_(r in ZZ + 1 / 2) b^mu_r upright(e)^(- pi / ell upright(i) r (tau plus.minus sigma)) $
- DD: integer in the R sector and half-integer in the NS sector
- DN or ND: half-integer in the R sector and integer in the NS sector
#quote[In the sequel, unless stated otherwise, we refer to (DD) or (NN) boundary conditions, i.e. the NS sector is the half-integer one.]

== Canonical quantisation and Super-Virasoro-Algebra

=== Canonical (anti-)commutation relations

/ P135:

Canonical commutation relations for the scalars(bosonic modes) $ [alpha^mu_m, alpha^nu_n] = m delta_(m + n, 0) eta^(mu nu) $ Canonical anti-commutation relations for the fermions(fermionic fields) $ {psi^mu_+ (tau, sigma), psi^nu_+ (tau, sigma')} = & 2 pi eta^(mu nu) delta (sigma - sigma') \
{psi^mu_- (tau, sigma), psi^nu_- (tau, sigma')} = & 2 pi eta^(mu nu) delta (sigma - sigma') \
{psi^mu_+ (tau, sigma), psi^nu_- (tau, sigma')} = & 0 $ Corresponding anti-commutation relation for the fermionic modes $ => {b^mu_m, b^nu_n} = {tilde(b)^mu_m, tilde(b)^nu_n} = eta^(mu nu) delta_(m + n, 0) $ Note that $ {b^mu_m, b^nu_0} = eta^(mu nu) delta_(m, 0) => {b^mu_m, b^nu_0} = 0 forall m != 0 \
{b^mu_0, b^nu_0} = eta^(mu nu) $

Ground state/vacuum
- NS sector $ alpha^mu_m |0chevron.r_"NS" = 0 & quad forall m > 0, m in ZZ \
      b^mu_r |0chevron.r_"NS" = 0 & quad forall r > 0, r in ZZ + 1 / 2 $ #quote[$|0chevron.r_"NS"$ is the *unique* ground state. It is a *spacetime* scalar. ... All states in the NS sector are thus spacetime bosons.]
- Ramond sector $ alpha^mu_m |0chevron.r_R = b^mu_n |0chevron.r_R = 0 quad forall m, n > 0 (m, n in ZZ) => b^mu_0 |0chevron.r_R in.not {0, |0chevron.r_R} $ Note that $ b^mu_m b^nu_0 |0chevron.r_R = - b^nu_0 b^mu_m |0chevron.r_R = 0, quad forall m != 0 $ #quote[$|0chevron.r_R$ is a degenerate ground state.] Recall the spacetime Clifford algebra ${Gamma^mu, Gamma^nu} = 2 eta^(mu nu)$ in $d$D, #quote[the ground state $|0chevron.r_R$ furnishes a representation of the $d$-dimensional Clifford algebra. $|0chevron.r_R$ is a spinor in d-dimensions.]

=== Interlude: Spinors of $S O(1, d - 1)$

/ P136\~137:

#heading(depth: 4, outlined: false)[$d = 2 + 2 k$]

Clifford algebra $ {Gamma^mu, Gamma^nu} = 2 eta^(mu nu) $
(k + 1) raising and lowering operators $ Gamma^(0 plus.minus) = & 1 / 2 (plus.minus Gamma^0 + Gamma^1), \
Gamma^(a plus.minus) = & 1 / 2 (Gamma^(2 a) plus.minus upright(i) Gamma^(2 a + 1)), quad a = 1, ..., k $ with anti-commutation relations $ {Gamma^(a +), Gamma^(b -)} = delta^(a b), quad {Gamma^(a -), Gamma^(b -)} = {Gamma^(a +), Gamma^(b +)} = 0 $

$(Gamma^(a plus.minus))^2 = 0 => exists "state" zeta "s.t." Gamma^(a -) zeta = 0, forall a$, for example $zeta = Gamma^(a -) tilde(zeta), forall tilde(zeta)$.

Dirac spinor is defined as a representation of the Clifford algebra with $2^(k + 1) = 2^(d\/2)$ states and \# components = \# states $ |s chevron.r = |s_0\, s_1\, ...\, s_k chevron.r = (Gamma^(k +))^(s_k + 1 / 2) ... (Gamma^(1 +))^(s_1 + 1 / 2) (Gamma^(0 +))^(s_0 + 1 / 2) zeta, quad s_j = plus.minus 1 / 2, forall j in {0, ..., k}. $
Dirac spinor furnishes also a representation of $S p i n (1, d - 1)$, $S O(1, d - 1) = S p i n (1, d - 1) \/ ZZ_2$: $ S_a |s chevron.r = s_a |s chevron.r, quad S_a equiv upright(i)^(delta_(a, 0)) Sigma^(2 a, 2 a + 1) = Gamma^(a +) Gamma^(a -) - 1 / 2, quad Sigma^(mu nu) = - upright(i) / 4 [Gamma^mu, Gamma^nu] $

#heading(depth: 4, outlined: false)[(Reducible) Dirac spinor and Weyl spinors $d = 2 k + 2$]

$
  Gamma equiv upright(i)^(- k) Gamma^0 Gamma^1 ... Gamma^(d - 1) "with" Gamma^2 = 1, quad {Gamma, Gamma^mu} = 0, quad [Gamma, Sigma^(mu nu)] = 0, quad Gamma = 2^(k + 1) S_0 S_1 ... S_k
$ $
  Gamma |s chevron.r = cases(1 & quad "if an even number of" s_a = 1 / 2, -1 & quad "if an odd number of" s_a = 1 / 2)
$ $ [2^(d\/2)]_"Dirac" -> [2^(d\/2 - 1)]_"Weyl" plus.o [2^(d\/2 - 1)]_"Weyl" $

The practice of distinguishing the chirality of the Weyl spinors by the eigenvalue of $Gamma$ is consistent with @WorldsheetWeylspinors.

#heading(depth: 4, outlined: false)[$d = 2 k + 3$]

- Clifford algebra in $d = 2 k + 3$ = $Gamma$ + Clifford algebra in $d = 2 k + 2$
- Irreducible Dirac spinor

#heading(depth: 4, outlined: false)[Majorana spinor]

- Reality condition $=> d in {0, 1, 2, 3, 4} mod 8$
- Majorana-Weyl spinor: $d = 2 mod 8$

#quote[Finally, all states in the R-sector ... are therefore *spacetime* fermions.]

=== Super-Virasoro-Algebra and physical state condition(focusing on open strings)

Super-Virasoro constraints $ T_(plus.minus plus.minus) approx 0, quad J_plus.minus approx 0 $

/ P138:

Modes/Fourier of the energy-momentum $ L_m = & - ell / (2 pi) integral_0^ell dif sigma (upright(e)^(upright(i) pi / ell m sigma) T_(++) + upright(e)^(- upright(i) pi / ell m sigma) T_(--)) = L_m^((b)) + L_m^((f)) \
L_0 = & 1 / 2 alpha_0^2 + N, quad N = $

Modes/Fourier of the supercurrent $ G_r = $

Super-Virasoro-Algebra $ [L_m, L_n] = & \
[L_m, G_r] = & \
{G_r, G_s} = & $

Superconformal anomaly/central charge $ c = 3 / 2 d $

/ P139:

== Open string spectrum in light-cone quantisation (all NN)

- Note that the spacetime statistics of the excitations in the NS-sector are bosonic, while the spacetime statistics of the excitations in the R-sector are fermionic. The table on page 143 is poorly worded in which the "statistics" refers to spacetime statistics. At the same time, the "lowest level" mentioned above only applies to the R-sector. The NS-sector also contains the first excited state which is fermionic on the worldsheet.

== Closed string spectrum in LCQ
