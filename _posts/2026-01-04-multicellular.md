---
layout: post
title:  'Bridging the Gap: A Review of "Mesoscale Modules as Fundamental Units of Tissue Function"'
date:   2026-01-04 08:00:00
categories:
- science
tags:
- multicellular
- systems biology
---

In their recent perspective, [Chen et al.](https://linkinghub.elsevier.com/retrieve/pii/S0092867425011511) observe that the leap from single-cell phenotypes to whole-organ function is too vast to be bridged by purely data-driven methods. They propose the existence of "mesoscale modules"—intermediate, functional units of tissue organization that serve as the building blocks for higher-order physiological behaviors. Drawing an analogy to the "network motifs" (like feed-forward loops) that revolutionized our understanding of gene regulatory networks (GRNs), the authors suggest that tissues are composed of recurring architectural patterns.

The authors propose several example modules differentiated by their function and structure:

- **Sheets:** 2D arrays (like epithelia) that form selective barriers and facilitate mechanosensing.
- **Streets:** Conduits formed by ECM or cells that expedite long-range transport.
- **Proliferative Conveyors:** Structures like intestinal crypts that harness cell division to produce a controlled output of differentiated cells.
- **Repeaters:** Arrays of sensory units (e.g., villi or hepatic lobules) that enhance signal detection and range.
- **Search Parties, Spatial A/D Converters, and Flocks:** Modules governing collective migration, decision-making boundaries, and coordinated movement.

First, this is an outstanding, beautiful perspective piece. I love that this is an attempt to bring together ideas about how to integratively model intercellular systems. This perspective, along with recent work such as [Johnson et al. (2025)](https://linkinghub.elsevier.com/retrieve/pii/S0092867425007500), shows that systems biologists have much to contribute to this problem. Where [Chen et al.](https://linkinghub.elsevier.com/retrieve/pii/S0092867425011511) define the structural units (the "nouns" of tissue architecture), [Johnson et al.](https://linkinghub.elsevier.com/retrieve/pii/S0092867425007500) provide the "grammar"—a human-interpretable language for encoding the behavioral rules that drive these agents. Together, these works suggest a future where we can describe a tissue by its modular architecture and simulate it using a standardized grammar of cell behaviors.

It also reflects that conceptual advancements will be necessary to understand multicellular networks. Purely data-driven (i.e. data hungry) methods won't go as far at larger scales. We can obtain millions of cells from individuals to build atlases, but we can't obtain millions of healthy lungs to run perturbations. We need the kind of mechanistic abstraction these papers propose to simulate "virtual tissues" and bridge the gap between static 'omics data and dynamic function.

After considering the perspective, I think there are some limitations to the mesoscale modules concept. However, I bring these up as opportunities to refine the idea—it seems like the clearest path to me for building models that capture the emergent behaviors of tissues.

### Multicellular Architectures Have a More Limited Mapping to Function Compared to GRN Counterparts

In the study of GRNs, a specific network motif (like a coherent feed-forward loop) provides a constrained range of behaviors, but that range is tunable via parameter values. Furthermore, we have excellent theory for exploring behavior across parameter ranges.

In contrast, multicellular architectures, such as **Sheets**, appear to work only for certain functions, and those functions are not necessarily revealed by the architecture itself. A sheet might be a barrier in the gut or a filtration system in the kidney glomerulus. The architecture alone doesn't fully define the input-output relationship in the way a GRN motif often does.

Perhaps unbiased ways of looking for cellular features associated with an architecture motif could reveal new biology? For instance, cells in sheets will be enriched for cadherins and tight junction proteins compared to neighboring cells. If we could systematically link these molecular features to the **Sheet** module, this might help to define the unique niche of the module.

### It Is Revealing That Multicellular Architectures Are Mostly Restricted to the Same Features Copied Across Cells

A striking feature of the modules proposed by [Chen et al.](https://linkinghub.elsevier.com/retrieve/pii/S0092867425011511) is that they often involve the same features copied across many cells. For example, all the cells in a **Sheet** are sheet-like; all units in a **Repeater** are identical sensory structures.

Perhaps one exception is the **Proliferative Conveyor**, where cells exist along a differentiation cascade—stem cells at the base, transit-amplifying cells in the middle, and differentiated cells at the exit. This implies a spatial coordination of _different_ cell states.

However, there are almost certainly many motifs in which cells of distinct types coordinate that are missing from this initial list. For instance, with stem cells and germinal centers, you have "feeder-eater" motifs or niche-support motifs. One cell type provides a signal and support for another to regulate the abundance or survival of the latter (e.g., the distal tip cell in the _C. elegans_ gonad conveyor). How could we define the complex cytokine circuits that exist between immune cells? We could use better ways of discovering this coordination across cell types rather than just identifying geometric arrangements of similar cells. We are certain to only be scratching the surface of module complexity.

### GRN Motifs Provide the Necessary Information to Run Useful Simulations—This Is Not Yet True for Multicellular Motifs

If you identify a GRN motif, you often have the topology required to write down differential equations that describe evolution and response of the system. This is not (yet) the case for multicellular motifs.

So you observe that cells are organized in a sheet. What is it that you would even model? The parameters—permeability, stiffness, transport rates—are not inherent to the **Sheet** definition. Maybe one needs a more focused question at this level of abstraction. Cells participate in many different functions, and so they are not as simple as a gene.

However, if the motif itself doesn’t tell you something specific about the behavior of the system, are we actually learning something more than what would come from an atlasing effort? Maybe refinements of modules can provide the specificity required for simulation. For example, **Streets** are described as facilitating transport, but "flow-based streets" (like blood vessels) are modeled very differently from "neuronal streets" (axon bundles) or "fibrous streets" (ECM tracks).

Given this, maybe there is a hierarchy of multicellular architectures, like GO terms, where there are high-level abstractions (e.g., "Transport Module") and low-level, simulation-ready abstractions (e.g., "Vascular capillary network").

### Conclusion

I feel like it would be helpful to think about how one defines architectures beyond manual curation. This was done successfully with GRNs, where groups have been able to enumerate all possible motifs (e.g., 3-node networks) and categorize them based on function and frequency. To truly democratize virtual cell laboratories—as [Johnson et al.](https://linkinghub.elsevier.com/retrieve/pii/S0092867425007500) aim to do with their grammar—we need a rigorous way to enumerate and define these mesoscale modules so they can become the reliable subroutines of tissue simulation.
