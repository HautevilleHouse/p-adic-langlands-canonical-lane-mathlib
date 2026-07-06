import PAdicLanglandsCanonicalLaneLean.Formalization
import PAdicLanglandsCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace PAdicLanglandsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "8a990b43a164a0a142bfbbe2f1a6cf4b343e46ad53183d987c4b4a6171f8f102", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "4d8a6b6b3660d5c243de0248ee0c486af0a7704f4cc33e1a6f6c7f66e883f641", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "942c5be10c615bd8b4e28f0d29ab823f18056d6de6bd25259d67a0c7186b60da", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "fef4c0d68414beb82abd8864bbaa7f998f96acbc533f4ed3fe598546d582c77f", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "36caa77dbf4aadb5a76cf82039f9fc2225cf286ad88ff98dd6e4e29d0d0d4db0", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "f071f16e5747ff8abb251f9efa6b939bfd82f47de22badfd3a35005cff03c62b", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "af3f1606b1b9196b7c0a6236982b960ec518cf09d0cd3d1b1f62d212789f175d", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "d68951bac55c1087420bcbbac13fed8ebd1f0a2ac79cc7b1d9c422bb49235c71", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "f85dc2a422dfeafe8e149bc1e9913e38610f0b4addd6b8454e742ba52c682194", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "PAD_G1", constant := "kappa_padic" },
  { gate := "PAD_G2", constant := "sigma_matching" },
  { gate := "PAD_G3", constant := "kappa_compact" },
  { gate := "PAD_G4", constant := "rho_rigidity" },
  { gate := "PAD_G5", constant := "packet_padic" },
  { gate := "PAD_G6", constant := "eps_coh" },
  { gate := "PAD_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "ef1e7bbf5dafb2893ab29f228664c1ed7d1ee42db8736d5fa10b4a5a8e9da757" },
  { path := "README.md", sha256 := "52e93f0d734a1c3a0becc980ddf5474d2edb722f8b5581b99787ff0948df32e8" },
  { path := "artifacts/constants_extracted.json", sha256 := "fef4c0d68414beb82abd8864bbaa7f998f96acbc533f4ed3fe598546d582c77f" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "942c5be10c615bd8b4e28f0d29ab823f18056d6de6bd25259d67a0c7186b60da" },
  { path := "artifacts/constants_registry.json", sha256 := "36caa77dbf4aadb5a76cf82039f9fc2225cf286ad88ff98dd6e4e29d0d0d4db0" },
  { path := "artifacts/promotion_report.json", sha256 := "af3f1606b1b9196b7c0a6236982b960ec518cf09d0cd3d1b1f62d212789f175d" },
  { path := "artifacts/stitch_constants.json", sha256 := "f071f16e5747ff8abb251f9efa6b939bfd82f47de22badfd3a35005cff03c62b" },
  { path := "notes/EG1_public.md", sha256 := "116d353b51176a241fcb09732994a25d6376b3d2596f348eb4b0cd85c312c892" },
  { path := "notes/EG2_public.md", sha256 := "665d309e7f2097cf2a1923d42cc746766d254cc7f8373500b986bde70e235100" },
  { path := "notes/EG3_public.md", sha256 := "94dc3dcfbf2e74ef666e1e6237d243fc459f68e830c4f045261654a9d6efbd8b" },
  { path := "notes/EG4_public.md", sha256 := "9743dd94afb4599b92ff871614c1cb69918e7ebf5d4bdefc10f5da03934094fa" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "4d8a6b6b3660d5c243de0248ee0c486af0a7704f4cc33e1a6f6c7f66e883f641" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "08f83c48fc5a1c05564b7a66bf6d074d89396f784ed21d388070723c17e0ef8b" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "82f8924c6c7522886f9eea8ab4cd5f422da2d637239f972d64670960074e3d1b" },
  { path := "paper/P_ADIC_LANGLANDS_PREPRINT.md", sha256 := "728c071279fa8ac2b06e0584916ad4ff4d162969dac62de5a2cb62051202c1c6" },
  { path := "repro/REPRO_PACK.md", sha256 := "5e987bd3a23221f1b38b56b5c4157f55d9384537d999b57331f49513035c981f" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "16c2ead8e7a5920b6208d8dbde6b0c64005e67b43b43e17572a3eed0590ebe73" },
  { path := "repro/certificate_baseline.json", sha256 := "f85dc2a422dfeafe8e149bc1e9913e38610f0b4addd6b8454e742ba52c682194" },
  { path := "repro/run_repro.sh", sha256 := "cabb3619e8a153616111a6c836d0af95def1c8d32665b9b98f81b6319c75c097" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/pad_closure_guard.py", sha256 := "c27a8e9cf049fe13b2f1c32ec19b41742987ce884ee35d1f618ed9de8d65b36a" },
  { path := "scripts/README.md", sha256 := "0bb4856108c4fe42cd7511b3b615035c850febb57fa818b3226b29d13353b44f" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "PAD_G1", status := "PASS" },
  { gate := "PAD_G2", status := "PASS" },
  { gate := "PAD_G3", status := "PASS" },
  { gate := "PAD_G4", status := "PASS" },
  { gate := "PAD_G5", status := "PASS" },
  { gate := "PAD_G6", status := "PASS" },
  { gate := "PAD_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_padic", value := "1.0940320000000001" },
  { key := "packet_padic", value := "1.0315400000000001" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_matching", value := "1.075" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_padic",
  "packet_padic",
  "rho_rigidity",
  "sigma_matching",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end PAdicLanglandsCanonicalLaneLean
end HautevilleHouse
