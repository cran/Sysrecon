#' inputTxt
#'
#' A dataset containing the contents of the metabolic reconstruction:
#'
#' @format A data frame with characters:
#' \describe{
#'   \item{V1}{the contents of the metabolic reconstruction}
#' }
"inputTxt"

#' A list of characters from the inputTxt.
"text"

#' A data frame contains the details of the steps of the metabolic reconstruction
#' @format A data frame  with 93 rows and 70 variables:
#' \describe{
#'   \item{MarkerWords}{the key words of the steps of metabolic reconstruction}
#'   \item{ThresholdValue}{the values filter the steps  after the mapping}
#'   \item{Steps}{the steps of metabolic reonstruction}
#'   \item{Group}{the classification of the steps}
#'   \item{SpeciesName}{-1 means the input of Species name. 1 means the output of Species name.}
#'   \item{TaxonID}{-1 means the input of Taxon ID. 1 means the output of Taxon ID.}
#'   \item{KEGG}{-1 means the input of KEGG reaction. 1 means the output of KEGG reaction.}
#'   \item{NCBI}{-1 means the input of NCBI gene. 1 means the output of NCBI gene.}
#'   \item{Uniprot}{-1 means the input of Uniprot gene. 1 means the output of Uniprot.}
#'   \item{MetaCyc}{-1 means the input of MetaCyc gene. 1 means the output of MetaCyc.}
#'   \item{PubChem}{-1 means the input of PubChem molecular formula. 1 means the output of PubChem molecular formula.}
#'   \item{Brenda}{identify whether input the Brenda. -1 means the input of Brenda. 1 means the output of Brenda.}
#'   \item{Chebi}{ -1 means the input of Chebi information. 1 means the the output of Chebi information.}
#'   \item{WebGCM}{-1 means the input of Web GCM. 1 means the the output of Web GCM.}
#'   \item{SpontaneousReaction}{-1 means the input of spontaneous reaction. 1 means the the output of spontaneous reaction.}
#'   \item{ExtracellularAndPeriplasmicTransportReactions}{-1 means the input of Extracellular and periplasmic transport reactions.
#'     1 means the the output of Extracellular and periplasmic transport reactions.}
#'   \item{ExchangeReaction}{-1 means the input of exchange reaction. 1 means the the output of exchange reaction.}
#'   \item{MissingExchangeReaction}{-1 means the input of missing exchange reaction. 1 means the the output of missing exchange reaction.}
#'   \item{IntracellularTransportReaction}{-1 means the input of intracellular transport reaction. 1 means the the output of intracellular transport reaction.}
#'   \item{Gene}{-1 means the input of gene. 1 means the the output of gene.}
#'   \item{Protein}{-1 means the input of protein. 1 means the the output of protein.}
#'   \item{Knockout}{-1 means the input of knockout. 1 means the the output of knockout.}
#'   \item{StoichiometricMatrix}{-1 means the input of stoichiometric matrix. 1 means the the output of stoichiometric matrix.}
#'   \item{ObjectiveReaction}{-1 means the input of objective reaction. 1 means the the output of objective reaction.}
#'   \item{Constraints}{-1 means the input of constraints. 1 means the the output of constraints.}
#'   \item{Secretion}{-1 means the input of secretion. 1 means the the output of secretion.}
#'   \item{Mutisecretion}{-1 means the input of mutisecretion. 1 means the the output of mutisecretion.}
#'   \item{RichMedia}{-1 means the input of rich media. 1 means the the output of rich media.}
#'   \item{GenomeSequence}{-1 means the input of genome sequence. 1 means the the output of genome sequence.}
#'   \item{ProteomeSequence}{-1 means the input of proteome sequence. 1 means the the output of proteome sequence.}
#'   \item{AminoAcidWeight}{-1 means the input of amino acid weight. 1 means the the output of amino acid weight.}
#'   \item{AminoAcidMolecularWeight}{-1 means the input of amino acid molecular weight. 1 means the the output of amino acid molecular weight.}
#'   \item{NucleotideWeight}{-1 means the input of nucleotide weight. 1 means the the output of nucleotide weight.}
#'   \item{NucleotideMolecularWeight}{-1 means the input of nucleotide molecular weight. 1 means the the output of nucleotide molecular weight.}
#'   \item{DryWeight}{-1 means the input of dry weight. 1 means the the output of dry weight.}
#'   \item{BiomassReaction}{-1 means the input of biomass reaction. 1 means the the output of biomass reaction.}
#'   \item{DemandReaction}{-1 means the input of demand reaction. 1 means the the output of demand reaction.}
#'   \item{SinkReaction}{-1 means the input of sink reaction. 1 means the the output of sink reaction.}
#'   \item{GapReaction}{-1 means the input of gap reaction. 1 means the the output of gap reaction.}
#'   \item{MinORMax}{-1 means the input of gap reaction. 1 means the the output of gap reaction.}
#'   \item{GeneticInformation}{-1 means the input of genetic information. 1 means the the output of genetic information.}
#'   \item{MetabolicFunction}{-1 means the input of metabolic function. 1 means the the output of metabolic function.}
#'   \item{Metabolites}{-1 means the input of metabolites. 1 means the the output of metabolites.}
#'   \item{BiomassMetabolites}{-1 means the input of biomass metabolites. 1 means the the output of biomass metabolites.}
#'   \item{MetabolicReaction}{-1 means the input of metabolic reaction. 1 means the the output of metabolic reaction.}
#'   \item{ReconstructionData}{-1 means the input of reconstruction data. 1 means the the output of reconstruction data.}
#'   \item{DataStatistics}{-1 means the input of data statistics. 1 means the the output of data statistics.}
#'   \item{NeutralMolecularFormula}{-1 means the input of neutral molecular formula. 1 means the the output of neutral molecular formula.}
#'   \item{ChargedMolecularFormula}{-1 means the input of charged molecular formula. 1 means the the output of charged molecular formula.}
#'   \item{ConservationOfMassAndCharge}{-1 means the input of conservation of mass and charge. 1 means the the output of conservation of mass and charge.}
#'   \item{GibbsFreeEnergyInformation}{-1 means the input of conservation of gibbs free energy information. 1 means the the output of gibbs free energy information.}
#'   \item{Mass_ChargeConservationAssessment}{-1 means the input of mass-charge conservation assessment. 1 means the the output of mass-charge conservation assessment.}
#'   \item{CellularCompartment}{-1 means the input of cellular compartment. 1 means the the output of cellular compartment.}
#'   \item{SubsystemInformation}{-1 means the input of subsystem information. 1 means the the output of subsystem information.}
#'   \item{IdentifiersInKEGG}{-1 means the input of subsystem information. 1 means the the output of subsystem information.}
#'   \item{IdentifiersInMetaCyc}{-1 means the input of identifiers in MetaCyc. 1 means the the output of identifiers in MetaCyc.}
#'   \item{UniformIdentifier}{-1 means the input of uniform identifier. 1 means the the output of uniform identifier.}
#'   \item{Coefficient}{-1 means the input of coefficient. 1 means the the output of coefficient.}
#'   \item{ScatterPlot}{-1 means the input of scatter plot. 1 means the the output of scatter plot.}
#'   \item{TerminalMetabolite}{-1 means the input of terminal metabolite. 1 means the the output of terminal metabolite.}
#'   \item{TypeIIIPathway}{-1 means the input of Type III pathway. 1 means the the output of Type III pathway.}
#'   \item{NetworkGap}{-1 means the input of network gap. 1 means the the output of network gap.}
#'   \item{Growth}{-1 means the input of growth. 1 means the the output of growth.}
#'   \item{BlockReaction}{-1 means the input of block reaction. 1 means the the output of block reaction.}
#'   \item{MetabolicFlux}{-1 means the input of metabolic flux. 1 means the the output of metabolic flux.}
#'   \item{ModelPredictCorrectly}{-1 means the input of model predict correctly. 1 means the the output of model predict correctly.}
#'   \item{ModelGrowingTooFast}{-1 means the input of model growing too fast. 1 means the the output of model growing too fast.}
#'   \item{SBML}{-1 means the input of SBML file. 1 means the the output of SBML file.}
#'   \item{Mat}{-1 means the input of Mat file. 1 means the the output of Mat file.}
#'   \item{Excel}{-1 means the input of Excel file. 1 means the the output of Excel file.}
#' }
"stepsMatrix"

#' A data frame contains the labels and groups of the steps of metabolic reconstruction
#'
#' @format A data frame contains 93 rows and 2 variables:
#' \describe{
#'   \item{label}{the steps of the metabolic reconstruction}
#'   \item{group}{the classfication of the labels}
#'   }
"stepTypes"

#' A data frame contains the details of the steps of the metabolic reconstruction
#'
#' @format A data frame contains 93 rows and 67 variables:
#' \describe{
#'   \item{MarkerWords}{the key words of the steps of metabolic reconstruction}
#'   \item{ThresholdValue}{the values filter the steps  after the mapping}
#'   \item{Steps}{the steps of metabolic reonstruction}
#'   \item{Group}{the classification of the steps}
#'   \item{SpeciesName}{1 means the output of Species name.}
#'   \item{TaxonID}{1 means the output of Taxon ID.}
#'   \item{NCBI}{1 means the output of NCBI.}
#'   \item{Uniprot}{1 means the output of Uniprot.}
#'   \item{KEGG}{1 means the output of KEGG.}
#'   \item{MetaCyc}{1 means the output of MetaCyc.}
#'   \item{PubChem}{1 means the output of PubChem.}
#'   \item{Brenda}{1 means the output of Brenda.}
#'   \item{Download}{1 means the output of Download.}
#'   \item{GeneticInformation}{1 means the output of Genetic information.}
#'   \item{ProteinInformation}{1 means the output of Protein information.}
#'   \item{GenomeSequence}{1 means the output of Genome sequence.}
#'   \item{ProteinSequence}{1 means the output of Protein sequence.}
#'   \item{MetabolicFunctionInformation}{1 means the output of Metabolic function information.}
#'   \item{Metabolites}{1 means the output of Metabolites.}
#'   \item{Cofactor}{1 means the output of Cofactor.}
#'   \item{Nucleotides}{1 means the output of Nucleotides.}
#'   \item{AminoAcid}{1 means the output of Amino acid.}
#'   \item{MolecularWeight}{1 means the output of Molecular weight.}
#'   \item{DryWeight}{1 means the output of Dry weight.}
#'   \item{MetabolicReaction}{1 means the output of Metabolic reaction.}
#'   \item{TerminalMetabolite}{1 means the output of Terminal metabolite.}
#'   \item{Secretion}{1 means the output of Secretion.}
#'   \item{BiomassReaction}{1 means the output of Biomass reaction.}
#'   \item{DemandReaction}{1 means the output of Demand reaction.}
#'   \item{SinkReaction}{1 means the output of Sink reaction.}
#'   \item{GapReaction}{1 means the output of Gap reaction.}
#'   \item{SpontaneousReaction}{1 means the output of Spontaneous reaction.}
#'   \item{ExtracellularAndPeriplasmicTransportReactions}{1 means the output of Extracellular and periplasmic transport reactions reaction.}
#'   \item{ExchangeReaction}{1 means the output of Exchange reaction.}
#'   \item{IntracellularTransportReaction}{1 means the output of Intracellular transport reaction.}
#'   \item{ReactionFlux}{1 means the output of Reaction flux.}
#'   \item{GPR}{1 means the output of GPR.}
#'   \item{BlastComparison}{1 means the output of Blast comparison.}
#'   \item{Homology}{1 means the output of Homology.}
#'   \item{HomologousGene}{1 means the output of Homology gene.}
#'   \item{StoichiometricMatrix}{1 means the output of Stoichiometric matrix.}
#'   \item{Knockout}{1 means the output of Knockout.}
#'   \item{TargetReaction}{1 means the output of Target reaction.}
#'   \item{Restrictions}{1 means the output of Restrictions.}
#'   \item{GrowthConditions}{1 means the output of Growth conditions.}
#'   \item{MinORMax}{1 means the output of min | max.}
#'   \item{ReconstructionData}{1 means the output of Reconstruction data.}
#'   \item{FVA}{1 means the output of FVA.}
#'   \item{MetabolicFlux}{1 means the output of Metabolic flux.}
#'   \item{Statistics}{1 means the output of Metabolic Statistics.}
#'   \item{NeutralMolecularFormula}{1 means the output of Neutral molecular formula.}
#'   \item{ChargedMolecularFormula}{1 means the output of Charged molecular formula.}
#'   \item{LiteratureDataCollection}{1 means the output of Literature data collection.}
#'   \item{ConservationOfMassAndCharge}{1 means the output of Conservation of mass and charge.}
#'   \item{GibbsFreeEnergy}{1 means the output of Gibbs free energy.}
#'   \item{CellCompartmentInformation}{1 means the output of Cell compartment information.}
#'   \item{SubsystemInformation}{1 means the output of Subsystem information.}
#'   \item{MetaboliteIdentification}{1 means the output of Metabolite Identification.}
#'   \item{Unite}{1 means the output of Unite.}
#'   \item{ManualPlanning}{1 means the output of Manual planning.}
#'   \item{Coefficient}{1 means the output of Coefficient.}
#'   \item{ScatterPlot}{1 means the output of Scatter plot.}
#'   \item{TestReport}{1 means the output of Test Report.}
#'   \item{TypeIIIPath}{1 means the output of Type III path.}
#'   \item{SBML}{1 means the output of SBML file.}
#'   \item{Mat}{1 means the output of Mat file.}
#'   \item{Excel}{1 means the output of Excel file.}
#'   }
"conversionMatrix"

#' A data frame contains the labels and groups of the transformation of metabolic reconstruction
#'
#' @format A data frame contains 63 rows and 2 variables:
#' \describe{
#'   \item{label}{the transformation of the metabolic reconstruction}
#'   \item{group}{the classfication of the labels}
#'   }
"conversionTypes"

#' A data frame contains the details of the databases and tools of the metabolic reconstruction
#'
#' @format
#' \describe{ A data frame contains the 93 rows and 46 varibales.
#'   \item{MarkerWords}{the key words of the steps of metabolic reconstruction}
#'   \item{ThresholdValue}{the values filter the steps  after the mapping}
#'   \item{Steps}{the steps of metabolic reonstruction}
#'   \item{Group}{the classification of the steps}
#'   \item{UniProtKnowledgeBase}{1 means the output of UniProt Knowledgebase.}
#'   \item{NCBI_Gene}{1 means the output of NCBI Gene.}
#'   \item{KEGG_Genes}{1 means the output of KEGG Genes.}
#'   \item{KEGG_Genome}{1 means the output of KEGG Genome.}
#'   \item{NCBI_Protein}{1 means the output of NCBI Protein.}
#'   \item{KEGG_Pathway}{1 means the output of KEGG Pathway.}
#'   \item{KEGG_Compound}{1 means the output of KEGG Compound.}
#'   \item{KEGG_Reaction}{1 means the output of KEGG Reaction.}
#'   \item{BioCyc}{1 means the output of BioCyc.}
#'   \item{MetaCycCompound}{1 means the output of MetaCyc Compound.}
#'   \item{MetaCycReaction}{1 means the output of MetaCyc Reaction.}
#'   \item{KEGGREST}{1 means the output of KEGGREST.}
#'   \item{COBRA}{1 means the output of COBRA.}
#'   \item{RAVEN}{1 means the output of RAVEN.}
#'   \item{CarveMe}{1 means the output of CarveMe.}
#'   \item{AuReMe}{1 means the output of AuReMe.}
#'   \item{MetaDraft}{1 means the output of MetaDraft.}
#'   \item{ModelSEED}{1 means the output of ModelSEED.}
#'   \item{PathwayTools}{1 means the output of Pathway Tools.}
#'   \item{Merlin}{1 means the output of Merlin.}
#'   \item{AGORA}{1 means the output of AGORA.}
#'   \item{COBRApy}{1 means the output of COBRApy.}
#'   \item{BLAST}{1 means the output of BLAST.}
#'   \item{ExperimentOrLiterature}{1 means the output of Experiment or literature.}
#'   \item{BRENDA}{1 means the output of BRENDA.}
#'   \item{minval}{1 means the output of minval.}
#'   \item{ChEBI}{1 means the output of ChEBI.}
#'   \item{PubChem_Compound}{1 means the output of PubChem-compound.}
#'   \item{ChEMBL_Compound}{1 means the output of ChEMBL compound.}
#'   \item{Rhea}{1 means the output of Rhea.}
#'   \item{pKa_DB}{1 means the output of pKa DB.}
#'   \item{rsbml}{1 means the output of rsbml.}
#'   \item{PipelinePilot}{1 means the output of Pipeline Pilot.}
#'   \item{Sybil}{1 means the output of Sybil.}
#'   \item{BUSCA}{1 means the output of BUSCA.}
#'   \item{PSORT}{1 means the output of PSORT.}
#'   \item{PASUB}{1 means the output of PASUB.}
#'   \item{PubChem_Substance}{1 means the output of PubChem substance.}
#'   \item{STRING}{1 means the output of STRING.}
#'   \item{ManualPlanning}{1 means the output of Manual planning.}
#'   \item{CMR}{1 means the output of CMR.}
#'   \item{g2f}{1 means the output of g2f.}
#'   }
"toolsMatrix"

#' A data frame contains the labels and groups of the databases and tools of metabolic reconstruction
#'
#' @format
#' \describe{
#'   \item{label}{the databases and tools of the metabolic reconstruction}
#'   \item{group}{the classfication of the labels}
#'   }
"toolsTypes"

#' A data frame contains the labels and groups of the contents of metabolic reconstruction
#'
#' @format
#' \describe{
#'   \item{label}{the contents of the metabolic reconstruction}
#'   \item{group}{the classfication of the labels}
#'   }
"contentTypes"

#' A data frame produced by the function get_term_matrix
#'
#' @format A data frame contains 4 variables
#' \describe{
#' \item{freq}{the frequency of the word occurs in a article.}
#' \item{prevalent}{the words type that often occurs in a article.}
#' \item{longest}{the longest type of a word.}
#' \item{shortest}{the shortest type of a word.}
#' }
"wordsMatrix"

#' A data frame produced by the function map_word_to_step
#'
#' @format A data frame contains 67 variables
#' \describe{
#'  \item{degree}{the number of the steps used in a article.}
#'  \item{SpeciesName}{-1 means the input of Species name. 1 means the output of Species name.}
#'  \item{TaxonID}{-1 means the input of Taxon ID. 1 means the output of Taxon ID.}
#'  \item{KEGG}{-1 means the input of KEGG reaction. 1 means the output of KEGG reaction.}
#'  \item{NCBI}{-1 means the input of NCBI gene. 1 means the output of NCBI gene.}
#'  \item{Uniprot}{-1 means the input of Uniprot gene. 1 means the output of Uniprot.}
#'  \item{MetaCyc}{-1 means the input of MetaCyc gene. 1 means the output of MetaCyc.}
#'  \item{PubChem}{-1 means the input of PubChem molecular formula. 1 means the output of PubChem molecular formula.}
#'  \item{Brenda}{identify whether input the Brenda. -1 means the input of Brenda. 1 means the output of Brenda.}
#'  \item{Chebi}{ -1 means the input of Chebi information. 1 means the the output of Chebi information.}
#'  \item{WebGCM}{-1 means the input of Web GCM. 1 means the the output of Web GCM.}
#'  \item{SpontaneousReaction}{-1 means the input of spontaneous reaction. 1 means the the output of spontaneous reaction.}
#'  \item{ExtracellularAndPeriplasmicTransportReactions}{-1 means the input of Extracellular and periplasmic transport reactions.
#'     1 means the the output of Extracellular and periplasmic transport reactions.}
#'  \item{ExchangeReaction}{-1 means the input of exchange reaction. 1 means the the output of exchange reaction.}
#'  \item{MissingExchangeReaction}{-1 means the input of missing exchange reaction. 1 means the the output of missing exchange reaction.}
#'  \item{IntracellularTransportReaction}{-1 means the input of intracellular transport reaction. 1 means the the output of intracellular transport reaction.}
#'  \item{Gene}{-1 means the input of gene. 1 means the the output of gene.}
#'  \item{Protein}{-1 means the input of protein. 1 means the the output of protein.}
#'  \item{Knockout}{-1 means the input of knockout. 1 means the the output of knockout.}
#'  \item{StoichiometricMatrix}{-1 means the input of stoichiometric matrix. 1 means the the output of stoichiometric matrix.}
#'  \item{ObjectiveReaction}{-1 means the input of objective reaction. 1 means the the output of objective reaction.}
#'  \item{Constraints}{-1 means the input of constraints. 1 means the the output of constraints.}
#'  \item{Secretion}{-1 means the input of secretion. 1 means the the output of secretion.}
#'  \item{Mutisecretion}{-1 means the input of mutisecretion. 1 means the the output of mutisecretion.}
#'  \item{RichMedia}{-1 means the input of rich media. 1 means the the output of rich media.}
#'  \item{GenomeSequence}{-1 means the input of genome sequence. 1 means the the output of genome sequence.}
#'  \item{ProteomeSequence}{-1 means the input of proteome sequence. 1 means the the output of proteome sequence.}
#'  \item{AminoAcidWeight}{-1 means the input of amino acid weight. 1 means the the output of amino acid weight.}
#'  \item{AminoAcidMolecularWeight}{-1 means the input of amino acid molecular weight. 1 means the the output of amino acid molecular weight.}
#'  \item{NucleotideWeight}{-1 means the input of nucleotide weight. 1 means the the output of nucleotide weight.}
#'  \item{NucleotideMolecularWeight}{-1 means the input of nucleotide molecular weight. 1 means the the output of nucleotide molecular weight.}
#'  \item{DryWeight}{-1 means the input of dry weight. 1 means the the output of dry weight.}
#'  \item{BiomassReaction}{-1 means the input of biomass reaction. 1 means the the output of biomass reaction.}
#'  \item{DemandReaction}{-1 means the input of demand reaction. 1 means the the output of demand reaction.}
#'  \item{SinkReaction}{-1 means the input of sink reaction. 1 means the the output of sink reaction.}
#'  \item{GapReaction}{-1 means the input of gap reaction. 1 means the the output of gap reaction.}
#'  \item{MinORMax}{-1 means the input of gap reaction. 1 means the the output of gap reaction.}
#'  \item{GeneticInformation}{-1 means the input of genetic information. 1 means the the output of genetic information.}
#'  \item{MetabolicFunction}{-1 means the input of metabolic function. 1 means the the output of metabolic function.}
#'  \item{Metabolites}{-1 means the input of metabolites. 1 means the the output of metabolites.}
#'  \item{BiomassMetabolites}{-1 means the input of biomass metabolites. 1 means the the output of biomass metabolites.}
#'  \item{MetabolicReaction}{-1 means the input of metabolic reaction. 1 means the the output of metabolic reaction.}
#'  \item{ReconstructionData}{-1 means the input of reconstruction data. 1 means the the output of reconstruction data.}
#'  \item{DataStatistics}{-1 means the input of data statistics. 1 means the the output of data statistics.}
#'  \item{NeutralMolecularFormula}{-1 means the input of neutral molecular formula. 1 means the the output of neutral molecular formula.}
#'  \item{ChargedMolecularFormula}{-1 means the input of charged molecular formula. 1 means the the output of charged molecular formula.}
#'  \item{ConservationOfMassAndCharge}{-1 means the input of conservation of mass and charge. 1 means the the output of conservation of mass and charge.}
#'  \item{GibbsFreeEnergyInformation}{-1 means the input of gibbs free energy information. 1 means the the output of gibbs free energy information.}
#'  \item{Mass_ChargeConservationAssessment}{-1 means the input of mass-charge conservation assessment. 1 means the the output of conservation assessment.}
#'  \item{CellularCompartment}{-1 means the input of cellular compartment. 1 means the the output of cellular compartment.}
#'  \item{SubsystemInformation}{-1 means the input of subsystem information. 1 means the the output of subsystem information.}
#'  \item{IdentifiersInKEGG}{-1 means the input of identifiers in KEGG. 1 means the the output of identifiers in KEGG.}
#'  \item{IdentifiersInMetaCyc}{-1 means the input of identifiers in MetaCyc. 1 means the the output of identifiers in MetaCyc.}
#'  \item{UniformIdentifier}{-1 means the input of uniform identifier. 1 means the the output of uniform identifier.}
#'  \item{Coefficient}{-1 means the input of coefficient. 1 means the the output of coefficient.}
#'  \item{ScatterPlot}{-1 means the input of scatter plot. 1 means the the output of scatter plot.}
#'  \item{TerminalMetabolite}{-1 means the input of terminal metabolite. 1 means the the output of terminal metabolite.}
#'  \item{TypeIIIPathway}{-1 means the input of Type III pathway. 1 means the the output of Type III pathway.}
#'  \item{NetworkGap}{-1 means the input of network gap. 1 means the the output of network gap.}
#'  \item{Growth}{-1 means the input of growth. 1 means the the output of growth.}
#'  \item{BlockReaction}{-1 means the input of block reaction. 1 means the the output of block reaction.}
#'  \item{MetabolicFlux}{-1 means the input of metabolic flux. 1 means the the output of metabolic flux.}
#'  \item{ModelPredictCorrectly}{1 means the output of model PredictCorrectly.}
#'  \item{ModelGrowingTooFast}{-1 means the input of model growing too fast. 1 means the the output of model growing too fast.}
#'  \item{SBML}{-1 means the input of SBML file. 1 means the the output of SBML file.}
#'  \item{Mat}{-1 means the input of Mat file. 1 means the the output of Mat file.}
#'  \item{Excel}{-1 means the input of Excel file. 1 means the the output of Excel file.}
#' }
"matrixProcess"


#' A data frame produced by the function map_word_to_step
#'
#' @format A data frame contains 64 variables
#' \describe{
#'  \item{degree}{the number of the steps used in a article.}
#'   \item{SpeciesName}{1 means the output of Species name.}
#'   \item{TaxonID}{1 means the output of Taxon ID.}
#'   \item{NCBI}{1 means the output of NCBI.}
#'   \item{Uniprot}{1 means the output of Uniprot.}
#'   \item{KEGG}{1 means the output of KEGG.}
#'   \item{MetaCyc}{1 means the output of MetaCyc.}
#'   \item{PubChem}{1 means the output of PubChem.}
#'   \item{Brenda}{1 means the output of Brenda.}
#'   \item{Download}{1 means the output of Download.}
#'   \item{GeneticInformation}{1 means the output of Genetic information.}
#'   \item{ProteinInformation}{1 means the output of Protein information.}
#'   \item{GenomeSequence}{1 means the output of Genome sequence.}
#'   \item{ProteinSequence}{1 means the output of Protein sequence.}
#'   \item{MetabolicFunctionInformation}{1 means the output of Metabolic function information.}
#'   \item{Metabolites}{1 means the output of Metabolites.}
#'   \item{Cofactor}{1 means the output of Cofactor.}
#'   \item{Nucleotides}{1 means the output of Nucleotides.}
#'   \item{AminoAcid}{1 means the output of Amino acid.}
#'   \item{MolecularWeight}{1 means the output of Molecular weight.}
#'   \item{DryWeight}{1 means the output of Dry weight.}
#'   \item{MetabolicReaction}{1 means the output of Metabolic reaction.}
#'   \item{TerminalMetabolite}{1 means the output of Terminal metabolite.}
#'   \item{Secretion}{1 means the output of Secretion.}
#'   \item{BiomassReaction}{1 means the output of Biomass reaction.}
#'   \item{DemandReaction}{1 means the output of Demand reaction.}
#'   \item{SinkReaction}{1 means the output of Sink reaction.}
#'   \item{GapReaction}{1 means the output of Gap reaction.}
#'   \item{SpontaneousReaction}{1 means the output of Spontaneous reaction.}
#'   \item{ExtracellularAndPeriplasmicTransportReactions}{1 means the output of Extracellular and periplasmic transport reactions reaction.}
#'   \item{ExchangeReaction}{1 means the output of Exchange reaction.}
#'   \item{IntracellularTransportReaction}{1 means the output of Intracellular transport reaction.}
#'   \item{ReactionFlux}{1 means the output of Reaction flux.}
#'   \item{GPR}{1 means the output of GPR.}
#'   \item{BlastComparison}{1 means the output of Blast comparison.}
#'   \item{Homology}{1 means the output of Homology.}
#'   \item{HomologousGene}{1 means the output of Homology gene.}
#'   \item{StoichiometricMatrix}{1 means the output of Stoichiometric matrix.}
#'   \item{Knockout}{1 means the output of Knockout.}
#'   \item{TargetReaction}{1 means the output of Target reaction.}
#'   \item{Restrictions}{1 means the output of Restrictions.}
#'   \item{GrowthConditions}{1 means the output of Growth conditions.}
#'   \item{MinORMax}{1 means the output of min | max.}
#'   \item{ReconstructionData}{1 means the output of Reconstruction data.}
#'   \item{FVA}{1 means the output of FVA.}
#'   \item{MetabolicFlux}{1 means the output of Metabolic flux.}
#'   \item{Statistics}{1 means the output of Metabolic Statistics.}
#'   \item{NeutralMolecularFormula}{1 means the output of Neutral molecular formula.}
#'   \item{ChargedMolecularFormula}{1 means the output of Charged molecular formula.}
#'   \item{LiteratureDataCollection}{1 means the output of Literature data collection.}
#'   \item{ConservationOfMassAndCharge}{1 means the output of Conservation of mass and charge.}
#'   \item{GibbsFreeEnergy}{1 means the output of Gibbs free energy.}
#'   \item{CellCompartmentInformation}{1 means the output of Cell compartment information.}
#'   \item{SubsystemInformation}{1 means the output of Subsystem information.}
#'   \item{MetaboliteIdentification}{1 means the output of Metabolite Identification.}
#'   \item{Unite}{1 means the output of Unite.}
#'   \item{ManualPlanning}{1 means the output of Manual planning.}
#'   \item{Coefficient}{1 means the output of Coefficient.}
#'   \item{ScatterPlot}{1 means the output of Scatter plot.}
#'   \item{TestReport}{1 means the output of Test Report.}
#'   \item{TypeIIIPath}{1 means the output of Type III path.}
#'   \item{SBML}{1 means the output of SBML file.}
#'   \item{Mat}{1 means the output of Mat file.}
#'   \item{Excel}{1 means the output of Excel file.}
#'  }
"matrixProcessConversion"

#' A data frame produced by the function map_to_word in the function vizProcess
#'
#' @format  A data frame contains with 3 variables
#' \describe{
#'  \item{step}{the steps used in the metabolic reconstruction}
#'  \item{degree}{the number that steps used in the metbolic reconstructoin occur in an article}
#'  \item{step_ID}{the order of the steps used in the metabolic reconstruction}
#'  }
"matrixProcessFile"



