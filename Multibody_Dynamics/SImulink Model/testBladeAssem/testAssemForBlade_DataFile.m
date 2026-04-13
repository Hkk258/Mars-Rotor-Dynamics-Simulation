clc;
clear all;

% Simscape(TM) Multibody(TM) version: 25.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData

 
%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(30).translation = [0.0 0.0 0.0];
smiData.RigidTransform(30).angle = 0.0;
smiData.RigidTransform(30).axis = [0.0 0.0 0.0];
smiData.RigidTransform(30).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [12.499999999999995 -24.999999999999993 86.499999999999986];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(1).ID = "B[Blade Grip-1:-:BladeRep-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-12.500000000000004 -9.4999999999999893 510.00000000000011];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931948;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962551 0.5773502691896264 0.5773502691896254];
smiData.RigidTransform(2).ID = "F[Blade Grip-1:-:BladeRep-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [12.499999999999995 -24.999999999999993 86.500000000000014];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(3).ID = "B[Blade Grip-2:-:BladeRep-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-12.499999999999989 -9.5000000000000018 510.00000000000045];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962573 0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(4).ID = "F[Blade Grip-2:-:BladeRep-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [15.000000000000007 9.0000000000000071 -15.000000000000007];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = "B[FeatherShaftClamp-1:-:Blade Grip-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-17.00643083606262 -11.40350024798984 -1.9999999999997962];  % mm
smiData.RigidTransform(6).angle = 8.8564896561995552e-16;  % rad
smiData.RigidTransform(6).axis = [-0.32896155293641499 0.9443433150553151 -1.3756459615854629e-16];
smiData.RigidTransform(6).ID = "F[FeatherShaftClamp-1:-:Blade Grip-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [12.5 0 0];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(7).axis = [-1 -0 -0];
smiData.RigidTransform(7).ID = "B[Blade Grip-2:-:FeatherShaftClamp-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [15.60505750827584 12.368596531676703 16.999999999999766];  % mm
smiData.RigidTransform(8).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(8).axis = [-1 1.7190786041603931e-32 -5.7656556452136979e-17];
smiData.RigidTransform(8).ID = "F[Blade Grip-2:-:FeatherShaftClamp-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [67.56440947403884 27 7.5512336529389898];  % mm
smiData.RigidTransform(9).angle = 2.1715762267978804;  % rad
smiData.RigidTransform(9).axis = [0.60094850586437887 0.60094850586437876 0.52699315612134967];
smiData.RigidTransform(9).ID = "B[BottAssem-1:-:FeatherShaftClamp-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [16.000000000000174 -10.000000000000002 -14.999999999999821];  % mm
smiData.RigidTransform(10).angle = 3.1415926535897918;  % rad
smiData.RigidTransform(10).axis = [0.70710678118654768 0.70710678118654757 6.1756155744774323e-16];
smiData.RigidTransform(10).ID = "F[BottAssem-1:-:FeatherShaftClamp-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [-63.305516697197703 26.999999999999993 24.786732599483233];  % mm
smiData.RigidTransform(11).angle = 2.0205170233177259;  % rad
smiData.RigidTransform(11).axis = [-0.5504516172310131 -0.5504516172310131 0.62769899966108311];
smiData.RigidTransform(11).ID = "B[BottAssem-1:-:FeatherShaftClamp-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [16.000000000000171 -9.9999999999999698 14.999999999999821];  % mm
smiData.RigidTransform(12).angle = 1.5707963267948966;  % rad
smiData.RigidTransform(12).axis = [-1.0622656790782413e-15 -9.3153264425396171e-16 1];
smiData.RigidTransform(12).ID = "F[BottAssem-1:-:FeatherShaftClamp-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 0 32.5];  % mm
smiData.RigidTransform(13).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(13).axis = [1 0 0];
smiData.RigidTransform(13).ID = "B[FeatherShaft-1:-:Blade Grip-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [-1.7053025658242404e-13 -15.500000000000057 33.000000000001904];  % mm
smiData.RigidTransform(14).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(14).axis = [1 -2.2989326948779428e-32 -3.5224177947616767e-16];
smiData.RigidTransform(14).ID = "F[FeatherShaft-1:-:Blade Grip-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [0 0 -4.5000000000000036];  % mm
smiData.RigidTransform(15).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(15).axis = [1 0 0];
smiData.RigidTransform(15).ID = "B[FeatherShaftClamp-1:-:FeatherShaft-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [1.8340884366807586e-13 -3.742839371767559e-14 -13.000000000001698];  % mm
smiData.RigidTransform(16).angle = 2.1044249658901878e-16;  % rad
smiData.RigidTransform(16).axis = [-0.36292404158297864 0.93181872702853341 -3.55836605553368e-17];
smiData.RigidTransform(16).ID = "F[FeatherShaftClamp-1:-:FeatherShaft-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [0 0 32.5];  % mm
smiData.RigidTransform(17).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(17).axis = [1 0 0];
smiData.RigidTransform(17).ID = "B[FeatherShaft-2:-:Blade Grip-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [2.0916601783937949e-13 -15.49999999999994 32.999999999998096];  % mm
smiData.RigidTransform(18).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(18).axis = [1 -4.6367786204249591e-33 -1.1234724261990762e-16];
smiData.RigidTransform(18).ID = "F[FeatherShaft-2:-:Blade Grip-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [0 0 -15];  % mm
smiData.RigidTransform(19).angle = 0;  % rad
smiData.RigidTransform(19).axis = [0 0 0];
smiData.RigidTransform(19).ID = "B[FeatherShaftClamp-3:-:FeatherShaft-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [-2.0927704014184201e-13 -6.1595316240569805e-14 -32.499999999997861];  % mm
smiData.RigidTransform(20).angle = 4.6793359652943735e-16;  % rad
smiData.RigidTransform(20).axis = [-0.95027735177202799 -0.31140480842328228 6.9235674093943497e-17];
smiData.RigidTransform(20).ID = "F[FeatherShaftClamp-3:-:FeatherShaft-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [0 240 0];  % mm
smiData.RigidTransform(21).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(21).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(21).ID = "B[Spine Assembly-1:-:BottAssem-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [1.8778429097521986e-12 210 -1.9674155291714443e-13];  % mm
smiData.RigidTransform(22).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(22).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(22).ID = "F[Spine Assembly-1:-:BottAssem-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [0 2.9999999999999991 0];  % mm
smiData.RigidTransform(23).angle = 1.0789395151894148;  % rad
smiData.RigidTransform(23).axis = [0 -1 0];
smiData.RigidTransform(23).ID = "AssemblyGround[BottAssem-1:Spacer-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [0 22.999999999999996 0];  % mm
smiData.RigidTransform(24).angle = 3.0106467951105489;  % rad
smiData.RigidTransform(24).axis = [-0 -1 -0];
smiData.RigidTransform(24).ID = "AssemblyGround[BottAssem-1:CF_Plate-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [3.0050431666938271e-10 285.34769273665199 1.434901265669001e-11];  % mm
smiData.RigidTransform(25).angle = 3.1415926535897607;  % rad
smiData.RigidTransform(25).axis = [0.33806513905133917 4.5609689274440279e-14 -0.94112271344293819];
smiData.RigidTransform(25).ID = "AssemblyGround[BottAssem-1:Gear Assem-1:Gear-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [0 0 0];  % mm
smiData.RigidTransform(26).angle = 0;  % rad
smiData.RigidTransform(26).axis = [0 0 0];
smiData.RigidTransform(26).ID = "AssemblyGround[BottAssem-1:Gear Assem-1:Gear hub-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [0 0 0];  % mm
smiData.RigidTransform(27).angle = 0;  % rad
smiData.RigidTransform(27).axis = [0 0 0];
smiData.RigidTransform(27).ID = "AssemblyGround[BottAssem-1:Gear Assem-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [0 0 0];  % mm
smiData.RigidTransform(28).angle = 0;  % rad
smiData.RigidTransform(28).axis = [0 0 0];
smiData.RigidTransform(28).ID = "AssemblyGround[Spine Assembly-1:RodWithBase-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [0 240 0];  % mm
smiData.RigidTransform(29).angle = 0.83694224586012611;  % rad
smiData.RigidTransform(29).axis = [0 1 0];
smiData.RigidTransform(29).ID = "AssemblyGround[Spine Assembly-1:Spine Mount-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [0 0 0];  % mm
smiData.RigidTransform(30).angle = 0;  % rad
smiData.RigidTransform(30).axis = [0 0 0];
smiData.RigidTransform(30).ID = "RootGround[Spine Assembly-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(10).mass = 0.0;
smiData.Solid(10).CoM = [0.0 0.0 0.0];
smiData.Solid(10).MoI = [0.0 0.0 0.0];
smiData.Solid(10).PoI = [0.0 0.0 0.0];
smiData.Solid(10).color = [0.0 0.0 0.0];
smiData.Solid(10).opacity = 0.0;
smiData.Solid(10).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.023797564350942695;  % kg
smiData.Solid(1).CoM = [0 10 0];  % mm
smiData.Solid(1).MoI = [8.5467960801229399 15.507087870183035 8.5467960801229399];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Spacer*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.020376151387795291;  % kg
smiData.Solid(2).CoM = [2.6014126049722491e-12 2.0000000000000004 -0.31180016296571189];  % mm
smiData.Solid(2).MoI = [4.0501557430339643 33.26709410751053 29.27127476817736];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "CF_Plate*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.046495279906916341;  % kg
smiData.Solid(3).CoM = [2.3292105544946405e-10 290.24092283678323 2.1385234899726619e-10];  % mm
smiData.Solid(3).MoI = [81.000406769780525 160.50288433911987 81.00040676977973];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Gear*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.045597861172365646;  % kg
smiData.Solid(4).CoM = [0 -0.94070482456895776 0];  % mm
smiData.Solid(4).MoI = [34.071511289115122 66.137115339529899 34.071511289115129];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Gear hub*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.014683930129923636;  % kg
smiData.Solid(5).CoM = [0 0 0];  % mm
smiData.Solid(5).MoI = [1.6259174865073449 2.620369166770852 2.1544150074081019];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "FeatherShaftClamp*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.03214791762418432;  % kg
smiData.Solid(6).CoM = [0 89.687335092348249 0];  % mm
smiData.Solid(6).MoI = [207.36574873617363 5.3740036808417182 207.36574873617363];  % kg*mm^2
smiData.Solid(6).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(6).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "RodWithBase*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.021696624263854498;  % kg
smiData.Solid(7).CoM = [0 -0.5271493212669659 0];  % mm
smiData.Solid(7).MoI = [10.517199681091997 19.626130627444279 10.517199681092];  % kg*mm^2
smiData.Solid(7).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(7).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "Spine Mount*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.036470780732673007;  % kg
smiData.Solid(8).CoM = [0 -15.719838996430497 35.90986634933369];  % mm
smiData.Solid(8).MoI = [27.212256283255694 24.728633333620344 6.9012762530634921];  % kg*mm^2
smiData.Solid(8).PoI = [-0.20773753116189719 0 0];  % kg*mm^2
smiData.Solid(8).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = "Blade Grip*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.0018378317023500295;  % kg
smiData.Solid(9).CoM = [0 0 0];  % mm
smiData.Solid(9).MoI = [0.66590768681816048 0.66590768681816048 0.037675549898175613];  % kg*mm^2
smiData.Solid(9).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(9).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = "FeatherShaft*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.24937500000000004;  % kg
smiData.Solid(10).CoM = [0 0 262.5];  % mm
smiData.Solid(10).MoI = [5735.334062500001 5740.8203125000009 20.490312500000005];  % kg*mm^2
smiData.Solid(10).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(10).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = "BladeRep*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the CylindricalJoint structure array by filling in null values.
smiData.CylindricalJoint(2).Rz.Pos = 0.0;
smiData.CylindricalJoint(2).Pz.Pos = 0.0;
smiData.CylindricalJoint(2).ID = "";

smiData.CylindricalJoint(1).Rz.Pos = 29.046843232772972;  % deg
smiData.CylindricalJoint(1).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(1).ID = "[FeatherShaft-1:-:Blade Grip-1]";

smiData.CylindricalJoint(2).Rz.Pos = 12.715096857136329;  % deg
smiData.CylindricalJoint(2).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(2).ID = "[FeatherShaft-2:-:Blade Grip-2]";


%Initialize the PlanarJoint structure array by filling in null values.
smiData.PlanarJoint(2).Rz.Pos = 0.0;
smiData.PlanarJoint(2).Px.Pos = 0.0;
smiData.PlanarJoint(2).Py.Pos = 0.0;
smiData.PlanarJoint(2).ID = "";

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(1).Rz.Pos = 162.57961182962921;  % deg
smiData.PlanarJoint(1).Px.Pos = 0;  % mm
smiData.PlanarJoint(1).Py.Pos = 0;  % mm
smiData.PlanarJoint(1).ID = "[FeatherShaftClamp-1:-:Blade Grip-1]";

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(2).Rz.Pos = -12.71509685714198;  % deg
smiData.PlanarJoint(2).Px.Pos = 0;  % mm
smiData.PlanarJoint(2).Py.Pos = 0;  % mm
smiData.PlanarJoint(2).ID = "[Blade Grip-2:-:FeatherShaftClamp-3]";


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = -168.37354493759779;  % deg
smiData.RevoluteJoint(1).ID = "[FeatherShaftClamp-1:-:FeatherShaft-1]";

smiData.RevoluteJoint(2).Rz.Pos = -5.6512722174352278e-12;  % deg
smiData.RevoluteJoint(2).ID = "[FeatherShaftClamp-3:-:FeatherShaft-2]";

smiData.RevoluteJoint(3).Rz.Pos = -83.982288255842036;  % deg
smiData.RevoluteJoint(3).ID = "[Spine Assembly-1:-:BottAssem-1]";

rpm = -100;
theta = 8;

fixed_angle = 10;
desired_angle = theta+fixed_angle;