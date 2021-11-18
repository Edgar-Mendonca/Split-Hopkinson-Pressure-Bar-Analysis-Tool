classdef SHPB_WAVE_ANALYSIS < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        SHPBWaveAnalysis                matlab.ui.Figure
        FileMenu                        matlab.ui.container.Menu
        OpenMenu                        matlab.ui.container.Menu
        ExitMenu                        matlab.ui.container.Menu
        EditMenu                        matlab.ui.container.Menu
        TabGroup                        matlab.ui.container.TabGroup
        ExperimentalResultsTab          matlab.ui.container.Tab
        STRESSCALCULATIONPanel          matlab.ui.container.Panel
        DensityExp                      matlab.ui.control.NumericEditField
        Densitykgm3Label                matlab.ui.control.Label
        CalculateStressButton           matlab.ui.control.Button
        WaveSpeedExp                    matlab.ui.control.NumericEditField
        WaveSpeedmsLabel                matlab.ui.control.Label
        ModulusExp                      matlab.ui.control.NumericEditField
        ModulusNmm2EditFieldLabel       matlab.ui.control.Label
        STRAINCALCULATIONSPanel         matlab.ui.container.Panel
        CalculateStrainButton           matlab.ui.control.Button
        VSTransmitted                   matlab.ui.control.NumericEditField
        VolagetoStrainFactorEditField_2Label  matlab.ui.control.Label
        DSTransmitted                   matlab.ui.control.NumericEditField
        DistancetoSamplemmEditField_2Label  matlab.ui.control.Label
        TransmittedStrainGaugeDataLabel  matlab.ui.control.Label
        DSIncident                      matlab.ui.control.NumericEditField
        DistancetoSamplemmEditFieldLabel  matlab.ui.control.Label
        VSIncident                      matlab.ui.control.NumericEditField
        VolagetoStrainFactorEditFieldLabel  matlab.ui.control.Label
        IncidentStrainGaugeDataLabel    matlab.ui.control.Label
        GraphAxesInputsPanel            matlab.ui.container.Panel
        ReflectedBarDataY               matlab.ui.control.DropDown
        ReflectedBarDataYDropDownLabel  matlab.ui.control.Label
        TransmittedBarDataY             matlab.ui.control.DropDown
        TransmittedBarDataYDropDownLabel  matlab.ui.control.Label
        IncidentBarDataY                matlab.ui.control.DropDown
        IncidentBarDataYDropDownLabel   matlab.ui.control.Label
        TimeDataX                       matlab.ui.control.DropDown
        TimeDataXDropDownLabel          matlab.ui.control.Label
        UIstressstrainexp               matlab.ui.control.UIAxes
        UIstressexp                     matlab.ui.control.UIAxes
        UItransmittedstrain             matlab.ui.control.UIAxes
        UIreflectedstrain               matlab.ui.control.UIAxes
        UIincidentstrain                matlab.ui.control.UIAxes
        UITransmittedV                  matlab.ui.control.UIAxes
        UIReflectedV                    matlab.ui.control.UIAxes
        UIIncidentV                     matlab.ui.control.UIAxes
        TheoreticalReultsTab            matlab.ui.container.Tab
        OUTPUTSPanel                    matlab.ui.container.Panel
        MaximumStrain                   matlab.ui.control.NumericEditField
        MaximumStrainEditFieldLabel     matlab.ui.control.Label
        MaximumStrainRate               matlab.ui.control.NumericEditField
        MaximumStrainRates1Label        matlab.ui.control.Label
        MaximumStress                   matlab.ui.control.NumericEditField
        MaximumStressNmm2EditFieldLabel  matlab.ui.control.Label
        SPECIMENANDBARINPUTSPanel       matlab.ui.container.Panel
        WaveSpeedTheory                 matlab.ui.control.NumericEditField
        WaveSpeedmsEditFieldLabel       matlab.ui.control.Label
        CalculateTheoreticalResults     matlab.ui.control.Button
        AoB                             matlab.ui.control.NumericEditField
        AreaofBarmm2Label               matlab.ui.control.Label
        AoS                             matlab.ui.control.NumericEditField
        AreaofSpecimenmm2Label          matlab.ui.control.Label
        LoS                             matlab.ui.control.NumericEditField
        LenghtofSpecimenmmLabel         matlab.ui.control.Label
        ModulusTheory                   matlab.ui.control.NumericEditField
        ModulusofBarNmm2Label           matlab.ui.control.Label
        UINominalStrainRate             matlab.ui.control.UIAxes
        UITrueStressStrain              matlab.ui.control.UIAxes
        UINominalStressStrain           matlab.ui.control.UIAxes
        UITrueStress                    matlab.ui.control.UIAxes
        UITrueStrain                    matlab.ui.control.UIAxes
        UINominalStress                 matlab.ui.control.UIAxes
        UINominalStrain                 matlab.ui.control.UIAxes
        UIMeanStressStrain              matlab.ui.control.UIAxes
        UIMeanNominalAxialStress        matlab.ui.control.UIAxes
        UIMeanAxialStrainRate           matlab.ui.control.UIAxes
        WaveAnalysis1Tab                matlab.ui.container.Tab
        WAVEANALYSISINPUTSPanel         matlab.ui.container.Panel
        TimePeriod                      matlab.ui.control.NumericEditField
        TimePeriodtsLabel               matlab.ui.control.Label
        CALCULATEWAVEANALYSISOP         matlab.ui.control.Button
        CTransmittedBar                 matlab.ui.control.NumericEditField
        CTransmittedBarmsLabel          matlab.ui.control.Label
        CIncidentBar                    matlab.ui.control.NumericEditField
        CIncidentBarmsEditFieldLabel    matlab.ui.control.Label
        ModulusofTransmittedBar         matlab.ui.control.NumericEditField
        ModulusofTransmittedBarNmm2Label  matlab.ui.control.Label
        AreaofTransmittedBar            matlab.ui.control.NumericEditField
        AreaofTransmittedBarmm2Label    matlab.ui.control.Label
        AreaofIncidentBar               matlab.ui.control.NumericEditField
        AreaofIncidentBarmm2Label       matlab.ui.control.Label
        ModulusofIncidentBar            matlab.ui.control.NumericEditField
        ModulusofIncidentBarNmm2Label   matlab.ui.control.Label
        LengthofSpecimenWA              matlab.ui.control.NumericEditField
        LengthoftheSpecimenmmLabel      matlab.ui.control.Label
        AreaofSpecimenWA                matlab.ui.control.NumericEditField
        AreaoftheSpecimenmm2Label       matlab.ui.control.Label
        UIDisplacementAnalysis          matlab.ui.control.UIAxes
        UIDisplacement3Wave             matlab.ui.control.UIAxes
        UIDisplacement1Wave             matlab.ui.control.UIAxes
        UIVelocityAnalysis              matlab.ui.control.UIAxes
        UIVelocity3Wave                 matlab.ui.control.UIAxes
        UIVelocity1Wave                 matlab.ui.control.UIAxes
        UIForce3Wave                    matlab.ui.control.UIAxes
        UIForceTB                       matlab.ui.control.UIAxes
        UIForceIB                       matlab.ui.control.UIAxes
        WaveAnalysis2Tab                matlab.ui.container.Tab
        OUTPUTSWAVEANALYSISPanel        matlab.ui.container.Panel
        MaxStressEditField              matlab.ui.control.NumericEditField
        MaxStressEditFieldLabel         matlab.ui.control.Label
        MaxForceEditField               matlab.ui.control.NumericEditField
        MaxForceEditFieldLabel          matlab.ui.control.Label
        UICompressiveStressStrain       matlab.ui.control.UIAxes
        UIForceDisplacement             matlab.ui.control.UIAxes
    end

    
    properties (Access = private)
        t % Description
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Close request function: SHPBWaveAnalysis
        function SHPBWaveAnalysisCloseRequest(app, event)
delete(app)

        end

        % Menu selected function: ExitMenu
        function ExitMenuSelected(app, event)
            delete(app)
            
        end

        % Menu selected function: OpenMenu
        function OpenMenuSelected(app, event)
            [file, path] = uigetfile('*.xlsx; *.csv');
            if isequal(file,0)
                msgbox('Please input a spreadsheet file','Error','error');
            else
                app.t = readtable(fullfile(path, file));
                app.TimeDataX.Items = app.t.Properties.VariableNames;
                app.IncidentBarDataY.Items = app.t.Properties.VariableNames;
                app.ReflectedBarDataY.Items = app.t.Properties.VariableNames;
                app.TransmittedBarDataY.Items = app.t.Properties.VariableNames;
                
                plot(app.UIIncidentV, app.t.(app.TimeDataX.Value), app.t.(app.IncidentBarDataY.Value));
                plot(app.UIReflectedV, app.t.(app.TimeDataX.Value), app.t.(app.ReflectedBarDataY.Value));
                plot(app.UITransmittedV, app.t.(app.TimeDataX.Value), app.t.(app.TransmittedBarDataY.Value));
                
            end
            
        end

        % Value changed function: TimeDataX
        function TimeDataXValueChanged(app, event)
value = app.TimeDataX.Value;

        end

        % Value changed function: IncidentBarDataY
        function IncidentBarDataYValueChanged(app, event)
            value = app.IncidentBarDataY.Value;
            
            plot(app.UIIncidentV, app.t.(app.TimeDataX.Value), app.t.(app.IncidentBarDataY.Value));
            
        end

        % Value changed function: ReflectedBarDataY
        function ReflectedBarDataYValueChanged(app, event)
            value = app.ReflectedBarDataY.Value;
            
            plot(app.UIReflectedV, app.t.(app.TimeDataX.Value), app.t.(app.ReflectedBarDataY.Value));
            
        end

        % Value changed function: TransmittedBarDataY
        function TransmittedBarDataYValueChanged(app, event)
            value = app.TransmittedBarDataY.Value;
            
            plot(app.UITransmittedV, app.t.(app.TimeDataX.Value), app.t.(app.TransmittedBarDataY.Value));
            
        end

        % Callback function
        function CalStrainButtonPushed(app, event)
            %%%%%%%%%%%%%%%%%%%%%%%
        end

        % Callback function
        function CalculateStressButtonPushed(app, event)
%%%%%%%%%%%%%%%%%%%%%%%%
        end

        % Button pushed function: CalculateStrainButton
        function CalculateStrainButtonPushed(app, event)
            %Voltage to Stain Factor
            VSI = app.VSIncident.Value;
            VST = app.VSTransmitted.Value;
            
            %Strains Experimental
            IStrain = VSI*app.t.(app.IncidentBarDataY.Value);
            RStrain = VSI*app.t.(app.ReflectedBarDataY.Value);
            TStrain = VST*app.t.(app.TransmittedBarDataY.Value);
            
            %Starin Plots
            plot(app.UIincidentstrain, app.t.(app.TimeDataX.Value), IStrain);
            plot(app.UIreflectedstrain, app.t.(app.TimeDataX.Value), RStrain);
            plot(app.UItransmittedstrain, app.t.(app.TimeDataX.Value), TStrain);
        end

        % Button pushed function: CalculateStressButton
        function CalculateStressButtonPushed2(app, event)
            %Transmitted Voltage and Strain
            VST = app.VSTransmitted.Value;
            TStrain = VST*app.t.(app.TransmittedBarDataY.Value);
            
            %Inputs Wave Speed and Density
            C = app.WaveSpeedExp.Value;
            D = app.DensityExp.Value;
            
            app.WaveSpeedTheory.Value = C;
            
            %Output Young's Modulus
            app.ModulusExp.Value = (C*C*D)/(1e6);
            E=app.ModulusExp.Value;
            
            app.ModulusTheory.Value = E;
            
            %Transmitted Strain
            TStress = E*TStrain;
            
            %Stress Time Plot
            plot(app.UIstressexp, app.t.(app.TimeDataX.Value), TStress);
            
            %Experimental Stress Strain Plot
            plot(app.UIstressstrainexp, TStrain, TStress);
        end

        % Button pushed function: CalculateTheoreticalResults
        function CalculateTheoreticalResultsButtonPushed(app, event)
            %Voltage to Strain Factor
            VSI = app.VSIncident.Value;
            VST = app.VSTransmitted.Value;
            
            %Strains
            IStrain = VSI*app.t.(app.IncidentBarDataY.Value);
            RStrain = VSI*app.t.(app.ReflectedBarDataY.Value);
            TStrain = VST*app.t.(app.TransmittedBarDataY.Value);
            
            %Inputs
            lo = app.LoS.Value; %mm
            Eb = app.ModulusTheory.Value; %N/mm2
            Ab = app.AoB.Value; %mm2
            As = app.AoS.Value; %mm2
            Cb = app.WaveSpeedTheory.Value; %m/s
            
            %Particle Velocity at input and output
            v1 = (Cb*1e3)*(IStrain-RStrain); %mm/s
            v2 = (Cb*1e3)*(TStrain); %mm/s
            
            %Mean axial strain rate
            es = (v1+v2)/lo;
            esp = es/100;
            plot(app.UIMeanAxialStrainRate, app.t.(app.TimeDataX.Value), esp);
            
            %Normal Forces at the specimen bar interface
            P1 = (Eb*Ab)*(IStrain + RStrain);
            P2 = (Eb*Ab)*(TStrain);
            
            %Mean Nominal Axial Stress
            SP1 = P1/(2*As);
            SP2 = P2/(2*As);
            Ss = SP1 + SP2;
            
            plot(app.UIMeanNominalAxialStress, app.t.(app.TimeDataX.Value), Ss);
            
            %Mean Stress Strain Plot
            plot(app.UIMeanStressStrain, esp, Ss)
            
            %Nominal Strain Rate
            esr = (2*Cb*1e3*RStrain)/lo;
            app.MaximumStrainRate.Value = max(esr);
            plot(app.UINominalStrainRate, app.t.(app.TimeDataX.Value), esr);
            
            %Nominal Strain
            time = app.t.(app.TimeDataX.Value);
            nstrain = cumtrapz(time, esr);
            app.MaximumStrain.Value = max(nstrain);
            plot(app.UINominalStrain, time, nstrain);
            
            %Nominal Stress
            nstress = ((Eb*Ab)/As)*TStrain;
            app.MaximumStress.Value = max(nstress);
            plot(app.UINominalStress, time, nstress);
            
            %Nominal Stress-Strain Plot
            plot(app.UINominalStressStrain, nstrain, nstress);
            
            %True Strain
            truestrain = -(log(1-nstrain));
            plot(app.UITrueStrain, time, truestrain);
            
            %True Stress
            truestress = nstress.*(1-nstrain);
            plot(app.UITrueStress, time, truestress);
            
            %True Stress Strain
            plot(app.UITrueStressStrain, truestrain, truestress);
            
            
            
            
            
        end

        % Button pushed function: CALCULATEWAVEANALYSISOP
        function CALCULATEWAVEANALYSISOPButtonPushed(app, event)
            %VOLTAGES
            VSI = app.VSIncident.Value;
            VST = app.VSTransmitted.Value;
            
            %Strains
            IStrain = VSI*app.t.(app.IncidentBarDataY.Value);
            RStrain = VSI*app.t.(app.ReflectedBarDataY.Value);
            TStrain = VST*app.t.(app.TransmittedBarDataY.Value);
            
            %TIME
            time = app.t.(app.TimeDataX.Value)
            
            %WAVE ANALYSIS INPUTS
            AI = app.AreaofIncidentBar.Value;
            EI = app.ModulusofIncidentBar.Value;
            AT = app.AreaofTransmittedBar.Value;
            ET = app.ModulusofTransmittedBar.Value;
            CI = app.CIncidentBar.Value;
            CT = app.CTransmittedBar.Value;
            LoSpecimen = app.LengthofSpecimenWA.Value;
            AoSpecimen = app.AreaofSpecimenWA.Value;
            delt = app.TimePeriod.Value;
            
            %FORCE CALCULATIONS
            F1 = (AI*EI)*(IStrain + RStrain);
            F2 = (AT*ET)*(TStrain);
            plot(app.UIForceIB, time, F1);
            plot(app.UIForceTB, time, F2);
            
            %FORCE 3-WAVE ANALYSIS AVERAGE
            F3w = (F1 + F2)/2;
            plot(app.UIForce3Wave,time, F3w);
            
            %VELOCITY CALCULATIONS
            %One Wave Analysis - Velocity
            v1 = 2*CI*RStrain*(1e3);
            plot(app.UIVelocity1Wave, time, v1);
            
            %Three Wave Analysis - Velocity
            v3 = ((CI*(IStrain + RStrain)) - (CT*TStrain))*(1e3);
            plot(app.UIVelocity3Wave, time, v3);
            
            % Velocity - Wave Comparison
            plot(app.UIVelocityAnalysis, time, v1);
            hold(app.UIVelocityAnalysis, "on");
            plot(app.UIVelocityAnalysis, time, v3);
            hold(app.UIVelocityAnalysis, "off");
            
            %DISPLACEMENT ANALYSIS
            %One Wave Analysis - Displacement
            u1 = cumtrapz(time, RStrain);
            u1Wave = 2*CI*u1*(1e3);
            plot(app.UIDisplacement1Wave, time, u1Wave);
            
            %Three Wave Analysis - Displacement
            u3 = cumtrapz(time, v3);
            u3Wave = delt*u3*(1e3);
            plot(app.UIDisplacement3Wave, time, u3Wave);
            
            %Displacement Wave Comparison
            plot(app.UIDisplacementAnalysis, time, u1Wave);
            hold(app.UIDisplacementAnalysis, "on");
            plot(app.UIDisplacementAnalysis, time, u3Wave);
            hold(app.UIDisplacementAnalysis, "off");
            
            %Force Displacement Plot
            plot(app.UIForceDisplacement, u3Wave, F3w);
            
            %Strain Calulated
            strain3W = u3Wave/LoSpecimen;
            
            %Stress Calculated
            stress3W = F3w/AoSpecimen;
            
            %Stress-Strain Calculated
            plot(app.UICompressiveStressStrain, strain3W, stress3W);
            
            %Outputs Wave Analysis
            app.MaxForceEditField.Value = max(F3w);
            app.MaxStressEditField.Value = max(stress3W);
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create SHPBWaveAnalysis and hide until all components are created
            app.SHPBWaveAnalysis = uifigure('Visible', 'off');
            app.SHPBWaveAnalysis.Position = [100 100 1263 656];
            app.SHPBWaveAnalysis.Name = 'SHPB_WAVE_ANALYSIS';
            app.SHPBWaveAnalysis.CloseRequestFcn = createCallbackFcn(app, @SHPBWaveAnalysisCloseRequest, true);

            % Create FileMenu
            app.FileMenu = uimenu(app.SHPBWaveAnalysis);
            app.FileMenu.Text = 'File';

            % Create OpenMenu
            app.OpenMenu = uimenu(app.FileMenu);
            app.OpenMenu.MenuSelectedFcn = createCallbackFcn(app, @OpenMenuSelected, true);
            app.OpenMenu.Text = 'Open';

            % Create ExitMenu
            app.ExitMenu = uimenu(app.FileMenu);
            app.ExitMenu.MenuSelectedFcn = createCallbackFcn(app, @ExitMenuSelected, true);
            app.ExitMenu.Text = 'Exit';

            % Create EditMenu
            app.EditMenu = uimenu(app.SHPBWaveAnalysis);
            app.EditMenu.Text = 'Edit';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.SHPBWaveAnalysis);
            app.TabGroup.Position = [1 17 1246 640];

            % Create ExperimentalResultsTab
            app.ExperimentalResultsTab = uitab(app.TabGroup);
            app.ExperimentalResultsTab.Title = 'Experimental Results';
            app.ExperimentalResultsTab.BackgroundColor = [0.902 0.902 0.902];

            % Create UIIncidentV
            app.UIIncidentV = uiaxes(app.ExperimentalResultsTab);
            title(app.UIIncidentV, 'Incident Voltage')
            xlabel(app.UIIncidentV, 'X')
            ylabel(app.UIIncidentV, 'Y')
            app.UIIncidentV.PlotBoxAspectRatio = [1.96124031007752 1 1];
            app.UIIncidentV.Position = [227 427 300 185];

            % Create UIReflectedV
            app.UIReflectedV = uiaxes(app.ExperimentalResultsTab);
            title(app.UIReflectedV, 'Reflected Voltage')
            xlabel(app.UIReflectedV, 'X')
            ylabel(app.UIReflectedV, 'Y')
            app.UIReflectedV.PlotBoxAspectRatio = [1.94615384615385 1 1];
            app.UIReflectedV.Position = [537 427 300 185];

            % Create UITransmittedV
            app.UITransmittedV = uiaxes(app.ExperimentalResultsTab);
            title(app.UITransmittedV, 'Transmitted Voltage')
            xlabel(app.UITransmittedV, 'X')
            ylabel(app.UITransmittedV, 'Y')
            app.UITransmittedV.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UITransmittedV.Position = [846 427 300 185];

            % Create UIincidentstrain
            app.UIincidentstrain = uiaxes(app.ExperimentalResultsTab);
            title(app.UIincidentstrain, 'Incident Strain')
            xlabel(app.UIincidentstrain, 'X')
            ylabel(app.UIincidentstrain, 'Y')
            app.UIincidentstrain.PlotBoxAspectRatio = [1.94615384615385 1 1];
            app.UIincidentstrain.Position = [227 221 300 185];

            % Create UIreflectedstrain
            app.UIreflectedstrain = uiaxes(app.ExperimentalResultsTab);
            title(app.UIreflectedstrain, 'Reflected Strain')
            xlabel(app.UIreflectedstrain, 'X')
            ylabel(app.UIreflectedstrain, 'Y')
            app.UIreflectedstrain.PlotBoxAspectRatio = [1.94615384615385 1 1];
            app.UIreflectedstrain.Position = [537 221 300 185];

            % Create UItransmittedstrain
            app.UItransmittedstrain = uiaxes(app.ExperimentalResultsTab);
            title(app.UItransmittedstrain, 'Transmitted Strain')
            xlabel(app.UItransmittedstrain, 'X')
            ylabel(app.UItransmittedstrain, 'Y')
            app.UItransmittedstrain.PlotBoxAspectRatio = [1.94615384615385 1 1];
            app.UItransmittedstrain.Position = [846 221 300 185];

            % Create UIstressexp
            app.UIstressexp = uiaxes(app.ExperimentalResultsTab);
            title(app.UIstressexp, 'Stress (Experimental)')
            xlabel(app.UIstressexp, 'X')
            ylabel(app.UIstressexp, 'Y')
            app.UIstressexp.PlotBoxAspectRatio = [1.94615384615385 1 1];
            app.UIstressexp.Position = [227 11 300 185];

            % Create UIstressstrainexp
            app.UIstressstrainexp = uiaxes(app.ExperimentalResultsTab);
            title(app.UIstressstrainexp, 'Stress - Strain')
            xlabel(app.UIstressstrainexp, 'X')
            ylabel(app.UIstressstrainexp, 'Y')
            app.UIstressstrainexp.Position = [537 11 300 185];

            % Create GraphAxesInputsPanel
            app.GraphAxesInputsPanel = uipanel(app.ExperimentalResultsTab);
            app.GraphAxesInputsPanel.Title = 'Graph Axes Inputs';
            app.GraphAxesInputsPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.GraphAxesInputsPanel.FontWeight = 'bold';
            app.GraphAxesInputsPanel.Position = [1 458 194 145];

            % Create TimeDataXDropDownLabel
            app.TimeDataXDropDownLabel = uilabel(app.GraphAxesInputsPanel);
            app.TimeDataXDropDownLabel.HorizontalAlignment = 'right';
            app.TimeDataXDropDownLabel.FontSize = 10;
            app.TimeDataXDropDownLabel.FontWeight = 'bold';
            app.TimeDataXDropDownLabel.Position = [55 98 69 22];
            app.TimeDataXDropDownLabel.Text = 'Time Data (X)';

            % Create TimeDataX
            app.TimeDataX = uidropdown(app.GraphAxesInputsPanel);
            app.TimeDataX.ValueChangedFcn = createCallbackFcn(app, @TimeDataXValueChanged, true);
            app.TimeDataX.FontSize = 10;
            app.TimeDataX.FontWeight = 'bold';
            app.TimeDataX.Position = [139 98 50 22];

            % Create IncidentBarDataYDropDownLabel
            app.IncidentBarDataYDropDownLabel = uilabel(app.GraphAxesInputsPanel);
            app.IncidentBarDataYDropDownLabel.HorizontalAlignment = 'right';
            app.IncidentBarDataYDropDownLabel.FontSize = 10;
            app.IncidentBarDataYDropDownLabel.FontWeight = 'bold';
            app.IncidentBarDataYDropDownLabel.Position = [20 66 104 22];
            app.IncidentBarDataYDropDownLabel.Text = 'Incident Bar Data (Y)';

            % Create IncidentBarDataY
            app.IncidentBarDataY = uidropdown(app.GraphAxesInputsPanel);
            app.IncidentBarDataY.ValueChangedFcn = createCallbackFcn(app, @IncidentBarDataYValueChanged, true);
            app.IncidentBarDataY.FontSize = 10;
            app.IncidentBarDataY.FontWeight = 'bold';
            app.IncidentBarDataY.Position = [139 66 50 22];

            % Create TransmittedBarDataYDropDownLabel
            app.TransmittedBarDataYDropDownLabel = uilabel(app.GraphAxesInputsPanel);
            app.TransmittedBarDataYDropDownLabel.HorizontalAlignment = 'right';
            app.TransmittedBarDataYDropDownLabel.FontSize = 10;
            app.TransmittedBarDataYDropDownLabel.FontWeight = 'bold';
            app.TransmittedBarDataYDropDownLabel.Position = [1 2 122 22];
            app.TransmittedBarDataYDropDownLabel.Text = {'Transmitted Bar Data (Y)'; ''};

            % Create TransmittedBarDataY
            app.TransmittedBarDataY = uidropdown(app.GraphAxesInputsPanel);
            app.TransmittedBarDataY.ValueChangedFcn = createCallbackFcn(app, @TransmittedBarDataYValueChanged, true);
            app.TransmittedBarDataY.FontSize = 10;
            app.TransmittedBarDataY.FontWeight = 'bold';
            app.TransmittedBarDataY.Position = [138 2 51 22];

            % Create ReflectedBarDataYDropDownLabel
            app.ReflectedBarDataYDropDownLabel = uilabel(app.GraphAxesInputsPanel);
            app.ReflectedBarDataYDropDownLabel.HorizontalAlignment = 'right';
            app.ReflectedBarDataYDropDownLabel.FontSize = 10;
            app.ReflectedBarDataYDropDownLabel.FontWeight = 'bold';
            app.ReflectedBarDataYDropDownLabel.Position = [13 34 111 22];
            app.ReflectedBarDataYDropDownLabel.Text = 'Reflected Bar Data (Y)';

            % Create ReflectedBarDataY
            app.ReflectedBarDataY = uidropdown(app.GraphAxesInputsPanel);
            app.ReflectedBarDataY.ValueChangedFcn = createCallbackFcn(app, @ReflectedBarDataYValueChanged, true);
            app.ReflectedBarDataY.FontSize = 10;
            app.ReflectedBarDataY.FontWeight = 'bold';
            app.ReflectedBarDataY.Position = [139 34 50 22];

            % Create STRAINCALCULATIONSPanel
            app.STRAINCALCULATIONSPanel = uipanel(app.ExperimentalResultsTab);
            app.STRAINCALCULATIONSPanel.Title = 'STRAIN CALCULATIONS';
            app.STRAINCALCULATIONSPanel.FontWeight = 'bold';
            app.STRAINCALCULATIONSPanel.Position = [2 221 206 221];

            % Create IncidentStrainGaugeDataLabel
            app.IncidentStrainGaugeDataLabel = uilabel(app.STRAINCALCULATIONSPanel);
            app.IncidentStrainGaugeDataLabel.FontSize = 10;
            app.IncidentStrainGaugeDataLabel.FontWeight = 'bold';
            app.IncidentStrainGaugeDataLabel.Position = [61 170 133 22];
            app.IncidentStrainGaugeDataLabel.Text = 'Incident Strain Gauge Data';

            % Create VolagetoStrainFactorEditFieldLabel
            app.VolagetoStrainFactorEditFieldLabel = uilabel(app.STRAINCALCULATIONSPanel);
            app.VolagetoStrainFactorEditFieldLabel.HorizontalAlignment = 'right';
            app.VolagetoStrainFactorEditFieldLabel.FontSize = 10;
            app.VolagetoStrainFactorEditFieldLabel.FontWeight = 'bold';
            app.VolagetoStrainFactorEditFieldLabel.Position = [19 149 114 22];
            app.VolagetoStrainFactorEditFieldLabel.Text = {'Volage to Strain Factor'; ''};

            % Create VSIncident
            app.VSIncident = uieditfield(app.STRAINCALCULATIONSPanel, 'numeric');
            app.VSIncident.FontSize = 10;
            app.VSIncident.FontWeight = 'bold';
            app.VSIncident.Position = [148 149 38 22];

            % Create DistancetoSamplemmEditFieldLabel
            app.DistancetoSamplemmEditFieldLabel = uilabel(app.STRAINCALCULATIONSPanel);
            app.DistancetoSamplemmEditFieldLabel.HorizontalAlignment = 'right';
            app.DistancetoSamplemmEditFieldLabel.FontSize = 10;
            app.DistancetoSamplemmEditFieldLabel.FontWeight = 'bold';
            app.DistancetoSamplemmEditFieldLabel.Position = [8 120 125 22];
            app.DistancetoSamplemmEditFieldLabel.Text = 'Distance to Sample (mm)';

            % Create DSIncident
            app.DSIncident = uieditfield(app.STRAINCALCULATIONSPanel, 'numeric');
            app.DSIncident.FontSize = 10;
            app.DSIncident.FontWeight = 'bold';
            app.DSIncident.Position = [148 120 38 22];

            % Create TransmittedStrainGaugeDataLabel
            app.TransmittedStrainGaugeDataLabel = uilabel(app.STRAINCALCULATIONSPanel);
            app.TransmittedStrainGaugeDataLabel.FontSize = 10;
            app.TransmittedStrainGaugeDataLabel.FontWeight = 'bold';
            app.TransmittedStrainGaugeDataLabel.Position = [37 89 152 22];
            app.TransmittedStrainGaugeDataLabel.Text = 'Transmitted Strain Gauge Data';

            % Create DistancetoSamplemmEditField_2Label
            app.DistancetoSamplemmEditField_2Label = uilabel(app.STRAINCALCULATIONSPanel);
            app.DistancetoSamplemmEditField_2Label.HorizontalAlignment = 'right';
            app.DistancetoSamplemmEditField_2Label.FontSize = 10;
            app.DistancetoSamplemmEditField_2Label.FontWeight = 'bold';
            app.DistancetoSamplemmEditField_2Label.Position = [1 39 125 22];
            app.DistancetoSamplemmEditField_2Label.Text = 'Distance to Sample (mm)';

            % Create DSTransmitted
            app.DSTransmitted = uieditfield(app.STRAINCALCULATIONSPanel, 'numeric');
            app.DSTransmitted.FontSize = 10;
            app.DSTransmitted.FontWeight = 'bold';
            app.DSTransmitted.Position = [141 39 39 22];

            % Create VolagetoStrainFactorEditField_2Label
            app.VolagetoStrainFactorEditField_2Label = uilabel(app.STRAINCALCULATIONSPanel);
            app.VolagetoStrainFactorEditField_2Label.HorizontalAlignment = 'right';
            app.VolagetoStrainFactorEditField_2Label.FontSize = 10;
            app.VolagetoStrainFactorEditField_2Label.FontWeight = 'bold';
            app.VolagetoStrainFactorEditField_2Label.Position = [12 68 114 22];
            app.VolagetoStrainFactorEditField_2Label.Text = {'Volage to Strain Factor'; ''};

            % Create VSTransmitted
            app.VSTransmitted = uieditfield(app.STRAINCALCULATIONSPanel, 'numeric');
            app.VSTransmitted.FontSize = 10;
            app.VSTransmitted.FontWeight = 'bold';
            app.VSTransmitted.Position = [141 68 39 22];

            % Create CalculateStrainButton
            app.CalculateStrainButton = uibutton(app.STRAINCALCULATIONSPanel, 'push');
            app.CalculateStrainButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateStrainButtonPushed, true);
            app.CalculateStrainButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.CalculateStrainButton.FontWeight = 'bold';
            app.CalculateStrainButton.Position = [48 10 106 22];
            app.CalculateStrainButton.Text = 'Calculate Strain';

            % Create STRESSCALCULATIONPanel
            app.STRESSCALCULATIONPanel = uipanel(app.ExperimentalResultsTab);
            app.STRESSCALCULATIONPanel.Title = 'STRESS CALCULATION';
            app.STRESSCALCULATIONPanel.FontWeight = 'bold';
            app.STRESSCALCULATIONPanel.Position = [2 11 204 185];

            % Create ModulusNmm2EditFieldLabel
            app.ModulusNmm2EditFieldLabel = uilabel(app.STRESSCALCULATIONPanel);
            app.ModulusNmm2EditFieldLabel.BackgroundColor = [0.0745 0.6235 1];
            app.ModulusNmm2EditFieldLabel.HorizontalAlignment = 'right';
            app.ModulusNmm2EditFieldLabel.FontSize = 10;
            app.ModulusNmm2EditFieldLabel.FontWeight = 'bold';
            app.ModulusNmm2EditFieldLabel.Position = [12 61 89 22];
            app.ModulusNmm2EditFieldLabel.Text = 'Modulus (N/mm2)';

            % Create ModulusExp
            app.ModulusExp = uieditfield(app.STRESSCALCULATIONPanel, 'numeric');
            app.ModulusExp.FontSize = 10;
            app.ModulusExp.FontWeight = 'bold';
            app.ModulusExp.Position = [116 61 54 22];

            % Create WaveSpeedmsLabel
            app.WaveSpeedmsLabel = uilabel(app.STRESSCALCULATIONPanel);
            app.WaveSpeedmsLabel.HorizontalAlignment = 'right';
            app.WaveSpeedmsLabel.FontSize = 10;
            app.WaveSpeedmsLabel.FontWeight = 'bold';
            app.WaveSpeedmsLabel.Position = [12 133 91 22];
            app.WaveSpeedmsLabel.Text = 'Wave Speed (m/s)';

            % Create WaveSpeedExp
            app.WaveSpeedExp = uieditfield(app.STRESSCALCULATIONPanel, 'numeric');
            app.WaveSpeedExp.FontSize = 10;
            app.WaveSpeedExp.FontWeight = 'bold';
            app.WaveSpeedExp.Position = [118 133 54 22];

            % Create CalculateStressButton
            app.CalculateStressButton = uibutton(app.STRESSCALCULATIONPanel, 'push');
            app.CalculateStressButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateStressButtonPushed2, true);
            app.CalculateStressButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.CalculateStressButton.FontWeight = 'bold';
            app.CalculateStressButton.Position = [42 18 109 22];
            app.CalculateStressButton.Text = 'Calculate Stress';

            % Create Densitykgm3Label
            app.Densitykgm3Label = uilabel(app.STRESSCALCULATIONPanel);
            app.Densitykgm3Label.HorizontalAlignment = 'right';
            app.Densitykgm3Label.FontSize = 10;
            app.Densitykgm3Label.FontWeight = 'bold';
            app.Densitykgm3Label.Position = [23 97 80 22];
            app.Densitykgm3Label.Text = 'Density (kg/m3)';

            % Create DensityExp
            app.DensityExp = uieditfield(app.STRESSCALCULATIONPanel, 'numeric');
            app.DensityExp.FontSize = 10;
            app.DensityExp.FontWeight = 'bold';
            app.DensityExp.Position = [118 97 54 22];

            % Create TheoreticalReultsTab
            app.TheoreticalReultsTab = uitab(app.TabGroup);
            app.TheoreticalReultsTab.Title = 'Theoretical Reults';
            app.TheoreticalReultsTab.BackgroundColor = [0.902 0.902 0.902];

            % Create UIMeanAxialStrainRate
            app.UIMeanAxialStrainRate = uiaxes(app.TheoreticalReultsTab);
            title(app.UIMeanAxialStrainRate, 'Mean Axial Strain Rate')
            xlabel(app.UIMeanAxialStrainRate, 'Time')
            ylabel(app.UIMeanAxialStrainRate, 'Strain Rate')
            app.UIMeanAxialStrainRate.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIMeanAxialStrainRate.FontWeight = 'bold';
            app.UIMeanAxialStrainRate.Position = [290 415 300 185];

            % Create UIMeanNominalAxialStress
            app.UIMeanNominalAxialStress = uiaxes(app.TheoreticalReultsTab);
            title(app.UIMeanNominalAxialStress, 'Mean Nominal Axial Stress')
            xlabel(app.UIMeanNominalAxialStress, 'X')
            ylabel(app.UIMeanNominalAxialStress, 'Y')
            app.UIMeanNominalAxialStress.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIMeanNominalAxialStress.Position = [606 415 300 185];

            % Create UIMeanStressStrain
            app.UIMeanStressStrain = uiaxes(app.TheoreticalReultsTab);
            title(app.UIMeanStressStrain, 'Mean Stress-Strain')
            xlabel(app.UIMeanStressStrain, 'X')
            ylabel(app.UIMeanStressStrain, 'Y')
            app.UIMeanStressStrain.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIMeanStressStrain.Position = [918 415 300 185];

            % Create UINominalStrain
            app.UINominalStrain = uiaxes(app.TheoreticalReultsTab);
            title(app.UINominalStrain, 'Nominal Strain')
            xlabel(app.UINominalStrain, 'Time')
            ylabel(app.UINominalStrain, 'Strain')
            app.UINominalStrain.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UINominalStrain.FontWeight = 'bold';
            app.UINominalStrain.Position = [290 201 300 185];

            % Create UINominalStress
            app.UINominalStress = uiaxes(app.TheoreticalReultsTab);
            title(app.UINominalStress, 'Nominal Stress')
            xlabel(app.UINominalStress, 'Time')
            ylabel(app.UINominalStress, 'Stress')
            app.UINominalStress.PlotBoxAspectRatio = [1.93846153846154 1 1];
            app.UINominalStress.FontWeight = 'bold';
            app.UINominalStress.Position = [606 201 300 185];

            % Create UITrueStrain
            app.UITrueStrain = uiaxes(app.TheoreticalReultsTab);
            title(app.UITrueStrain, 'True Strain')
            xlabel(app.UITrueStrain, 'Time')
            ylabel(app.UITrueStrain, 'True Strain')
            app.UITrueStrain.PlotBoxAspectRatio = [1.93846153846154 1 1];
            app.UITrueStrain.FontWeight = 'bold';
            app.UITrueStrain.Position = [316 6 300 185];

            % Create UITrueStress
            app.UITrueStress = uiaxes(app.TheoreticalReultsTab);
            title(app.UITrueStress, 'True Stress')
            xlabel(app.UITrueStress, 'Time')
            ylabel(app.UITrueStress, 'True Stress')
            app.UITrueStress.PlotBoxAspectRatio = [1.93846153846154 1 1];
            app.UITrueStress.FontWeight = 'bold';
            app.UITrueStress.Position = [628 6 300 185];

            % Create UINominalStressStrain
            app.UINominalStressStrain = uiaxes(app.TheoreticalReultsTab);
            title(app.UINominalStressStrain, 'Nominal Stress-Strain')
            xlabel(app.UINominalStressStrain, 'Strain')
            ylabel(app.UINominalStressStrain, 'Stress')
            app.UINominalStressStrain.PlotBoxAspectRatio = [1.93846153846154 1 1];
            app.UINominalStressStrain.FontWeight = 'bold';
            app.UINominalStressStrain.Position = [918 201 300 185];

            % Create UITrueStressStrain
            app.UITrueStressStrain = uiaxes(app.TheoreticalReultsTab);
            title(app.UITrueStressStrain, 'True Stress-Strain')
            xlabel(app.UITrueStressStrain, 'True Strain')
            ylabel(app.UITrueStressStrain, 'True Stress')
            app.UITrueStressStrain.PlotBoxAspectRatio = [1.93846153846154 1 1];
            app.UITrueStressStrain.FontWeight = 'bold';
            app.UITrueStressStrain.Position = [945 6 300 185];

            % Create UINominalStrainRate
            app.UINominalStrainRate = uiaxes(app.TheoreticalReultsTab);
            title(app.UINominalStrainRate, 'Nominal Strain Rate')
            xlabel(app.UINominalStrainRate, 'Time')
            ylabel(app.UINominalStrainRate, 'Strain Rate')
            app.UINominalStrainRate.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UINominalStrainRate.FontWeight = 'bold';
            app.UINominalStrainRate.Position = [4 11 300 185];

            % Create SPECIMENANDBARINPUTSPanel
            app.SPECIMENANDBARINPUTSPanel = uipanel(app.TheoreticalReultsTab);
            app.SPECIMENANDBARINPUTSPanel.Title = 'SPECIMEN AND BAR INPUTS';
            app.SPECIMENANDBARINPUTSPanel.FontWeight = 'bold';
            app.SPECIMENANDBARINPUTSPanel.Position = [17 353 260 253];

            % Create ModulusofBarNmm2Label
            app.ModulusofBarNmm2Label = uilabel(app.SPECIMENANDBARINPUTSPanel);
            app.ModulusofBarNmm2Label.HorizontalAlignment = 'right';
            app.ModulusofBarNmm2Label.FontSize = 10;
            app.ModulusofBarNmm2Label.FontWeight = 'bold';
            app.ModulusofBarNmm2Label.Position = [58 70 121 22];
            app.ModulusofBarNmm2Label.Text = 'Modulus of Bar (N/mm2)';

            % Create ModulusTheory
            app.ModulusTheory = uieditfield(app.SPECIMENANDBARINPUTSPanel, 'numeric');
            app.ModulusTheory.FontWeight = 'bold';
            app.ModulusTheory.Position = [185 70 63 22];

            % Create LenghtofSpecimenmmLabel
            app.LenghtofSpecimenmmLabel = uilabel(app.SPECIMENANDBARINPUTSPanel);
            app.LenghtofSpecimenmmLabel.HorizontalAlignment = 'right';
            app.LenghtofSpecimenmmLabel.FontSize = 10;
            app.LenghtofSpecimenmmLabel.FontWeight = 'bold';
            app.LenghtofSpecimenmmLabel.Position = [52 201 128 22];
            app.LenghtofSpecimenmmLabel.Text = 'Lenght of Specimen (mm)';

            % Create LoS
            app.LoS = uieditfield(app.SPECIMENANDBARINPUTSPanel, 'numeric');
            app.LoS.FontWeight = 'bold';
            app.LoS.Position = [186 201 63 22];

            % Create AreaofSpecimenmm2Label
            app.AreaofSpecimenmm2Label = uilabel(app.SPECIMENANDBARINPUTSPanel);
            app.AreaofSpecimenmm2Label.HorizontalAlignment = 'right';
            app.AreaofSpecimenmm2Label.FontSize = 10;
            app.AreaofSpecimenmm2Label.FontWeight = 'bold';
            app.AreaofSpecimenmm2Label.Position = [57 169 123 22];
            app.AreaofSpecimenmm2Label.Text = 'Area of Specimen (mm2)';

            % Create AoS
            app.AoS = uieditfield(app.SPECIMENANDBARINPUTSPanel, 'numeric');
            app.AoS.FontWeight = 'bold';
            app.AoS.Position = [186 169 63 22];

            % Create AreaofBarmm2Label
            app.AreaofBarmm2Label = uilabel(app.SPECIMENANDBARINPUTSPanel);
            app.AreaofBarmm2Label.HorizontalAlignment = 'right';
            app.AreaofBarmm2Label.FontSize = 10;
            app.AreaofBarmm2Label.FontWeight = 'bold';
            app.AreaofBarmm2Label.Position = [88 137 92 22];
            app.AreaofBarmm2Label.Text = 'Area of Bar (mm2)';

            % Create AoB
            app.AoB = uieditfield(app.SPECIMENANDBARINPUTSPanel, 'numeric');
            app.AoB.FontWeight = 'bold';
            app.AoB.Position = [186 137 63 22];

            % Create CalculateTheoreticalResults
            app.CalculateTheoreticalResults = uibutton(app.SPECIMENANDBARINPUTSPanel, 'push');
            app.CalculateTheoreticalResults.ButtonPushedFcn = createCallbackFcn(app, @CalculateTheoreticalResultsButtonPushed, true);
            app.CalculateTheoreticalResults.BackgroundColor = [0.9294 0.6941 0.1255];
            app.CalculateTheoreticalResults.FontWeight = 'bold';
            app.CalculateTheoreticalResults.Position = [41 22 183 22];
            app.CalculateTheoreticalResults.Text = 'Calculate Theoretical Results';

            % Create WaveSpeedmsEditFieldLabel
            app.WaveSpeedmsEditFieldLabel = uilabel(app.SPECIMENANDBARINPUTSPanel);
            app.WaveSpeedmsEditFieldLabel.HorizontalAlignment = 'right';
            app.WaveSpeedmsEditFieldLabel.FontSize = 10;
            app.WaveSpeedmsEditFieldLabel.FontWeight = 'bold';
            app.WaveSpeedmsEditFieldLabel.Position = [89 105 91 22];
            app.WaveSpeedmsEditFieldLabel.Text = 'Wave Speed (m/s)';

            % Create WaveSpeedTheory
            app.WaveSpeedTheory = uieditfield(app.SPECIMENANDBARINPUTSPanel, 'numeric');
            app.WaveSpeedTheory.FontWeight = 'bold';
            app.WaveSpeedTheory.Position = [186 105 62 22];

            % Create OUTPUTSPanel
            app.OUTPUTSPanel = uipanel(app.TheoreticalReultsTab);
            app.OUTPUTSPanel.Title = 'OUTPUTS';
            app.OUTPUTSPanel.FontWeight = 'bold';
            app.OUTPUTSPanel.Position = [17 221 260 133];

            % Create MaximumStressNmm2EditFieldLabel
            app.MaximumStressNmm2EditFieldLabel = uilabel(app.OUTPUTSPanel);
            app.MaximumStressNmm2EditFieldLabel.BackgroundColor = [0.4667 0.6745 0.1882];
            app.MaximumStressNmm2EditFieldLabel.HorizontalAlignment = 'right';
            app.MaximumStressNmm2EditFieldLabel.FontSize = 10;
            app.MaximumStressNmm2EditFieldLabel.FontWeight = 'bold';
            app.MaximumStressNmm2EditFieldLabel.Position = [47 84 128 22];
            app.MaximumStressNmm2EditFieldLabel.Text = 'Maximum Stress (N/mm2)';

            % Create MaximumStress
            app.MaximumStress = uieditfield(app.OUTPUTSPanel, 'numeric');
            app.MaximumStress.FontWeight = 'bold';
            app.MaximumStress.Position = [190 84 59 22];

            % Create MaximumStrainRates1Label
            app.MaximumStrainRates1Label = uilabel(app.OUTPUTSPanel);
            app.MaximumStrainRates1Label.BackgroundColor = [0.0745 0.6235 1];
            app.MaximumStrainRates1Label.HorizontalAlignment = 'right';
            app.MaximumStrainRates1Label.FontSize = 10;
            app.MaximumStrainRates1Label.FontWeight = 'bold';
            app.MaximumStrainRates1Label.Position = [44 20 131 22];
            app.MaximumStrainRates1Label.Text = 'Maximum Strain Rate (s-1)';

            % Create MaximumStrainRate
            app.MaximumStrainRate = uieditfield(app.OUTPUTSPanel, 'numeric');
            app.MaximumStrainRate.FontWeight = 'bold';
            app.MaximumStrainRate.Position = [190 20 59 22];

            % Create MaximumStrainEditFieldLabel
            app.MaximumStrainEditFieldLabel = uilabel(app.OUTPUTSPanel);
            app.MaximumStrainEditFieldLabel.BackgroundColor = [1 0.4118 0.1608];
            app.MaximumStrainEditFieldLabel.HorizontalAlignment = 'right';
            app.MaximumStrainEditFieldLabel.FontSize = 10;
            app.MaximumStrainEditFieldLabel.FontWeight = 'bold';
            app.MaximumStrainEditFieldLabel.Position = [91 52 83 22];
            app.MaximumStrainEditFieldLabel.Text = 'Maximum Strain';

            % Create MaximumStrain
            app.MaximumStrain = uieditfield(app.OUTPUTSPanel, 'numeric');
            app.MaximumStrain.FontWeight = 'bold';
            app.MaximumStrain.Position = [190 52 59 22];

            % Create WaveAnalysis1Tab
            app.WaveAnalysis1Tab = uitab(app.TabGroup);
            app.WaveAnalysis1Tab.Title = 'Wave Analysis-1';
            app.WaveAnalysis1Tab.BackgroundColor = [0.902 0.902 0.902];

            % Create UIForceIB
            app.UIForceIB = uiaxes(app.WaveAnalysis1Tab);
            title(app.UIForceIB, 'Force in Incident Bar')
            xlabel(app.UIForceIB, 'X')
            ylabel(app.UIForceIB, 'Y')
            app.UIForceIB.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIForceIB.FontWeight = 'bold';
            app.UIForceIB.Position = [295 421 300 185];

            % Create UIForceTB
            app.UIForceTB = uiaxes(app.WaveAnalysis1Tab);
            title(app.UIForceTB, 'Force in Transmitted Bar')
            xlabel(app.UIForceTB, 'X')
            ylabel(app.UIForceTB, 'Y')
            app.UIForceTB.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIForceTB.FontWeight = 'bold';
            app.UIForceTB.Position = [606 421 300 185];

            % Create UIForce3Wave
            app.UIForce3Wave = uiaxes(app.WaveAnalysis1Tab);
            title(app.UIForce3Wave, 'Force 3-Wave Analysis (Average)')
            xlabel(app.UIForce3Wave, 'X')
            ylabel(app.UIForce3Wave, 'Y')
            app.UIForce3Wave.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIForce3Wave.FontWeight = 'bold';
            app.UIForce3Wave.Position = [917 421 300 185];

            % Create UIVelocity1Wave
            app.UIVelocity1Wave = uiaxes(app.WaveAnalysis1Tab);
            title(app.UIVelocity1Wave, 'Velocity 1-Wave Analysis')
            xlabel(app.UIVelocity1Wave, 'X')
            ylabel(app.UIVelocity1Wave, 'Y')
            app.UIVelocity1Wave.PlotBoxAspectRatio = [1.94615384615385 1 1];
            app.UIVelocity1Wave.Position = [295 220 300 185];

            % Create UIVelocity3Wave
            app.UIVelocity3Wave = uiaxes(app.WaveAnalysis1Tab);
            title(app.UIVelocity3Wave, 'Velocity 3-Wave Analysis')
            xlabel(app.UIVelocity3Wave, 'X')
            ylabel(app.UIVelocity3Wave, 'Y')
            app.UIVelocity3Wave.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIVelocity3Wave.Position = [606 220 300 185];

            % Create UIVelocityAnalysis
            app.UIVelocityAnalysis = uiaxes(app.WaveAnalysis1Tab);
            title(app.UIVelocityAnalysis, 'Velocity Analysis')
            xlabel(app.UIVelocityAnalysis, 'X')
            ylabel(app.UIVelocityAnalysis, 'Y')
            app.UIVelocityAnalysis.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIVelocityAnalysis.Position = [917 220 300 185];

            % Create UIDisplacement1Wave
            app.UIDisplacement1Wave = uiaxes(app.WaveAnalysis1Tab);
            title(app.UIDisplacement1Wave, 'Displacement 1-Wave Analysis')
            xlabel(app.UIDisplacement1Wave, 'X')
            ylabel(app.UIDisplacement1Wave, 'Y')
            app.UIDisplacement1Wave.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIDisplacement1Wave.FontWeight = 'bold';
            app.UIDisplacement1Wave.Position = [295 13 300 185];

            % Create UIDisplacement3Wave
            app.UIDisplacement3Wave = uiaxes(app.WaveAnalysis1Tab);
            title(app.UIDisplacement3Wave, 'Displacement 3-Wave Analysis')
            xlabel(app.UIDisplacement3Wave, 'X')
            ylabel(app.UIDisplacement3Wave, 'Y')
            app.UIDisplacement3Wave.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIDisplacement3Wave.FontWeight = 'bold';
            app.UIDisplacement3Wave.Position = [606 13 300 185];

            % Create UIDisplacementAnalysis
            app.UIDisplacementAnalysis = uiaxes(app.WaveAnalysis1Tab);
            title(app.UIDisplacementAnalysis, 'Displacement Analysis')
            xlabel(app.UIDisplacementAnalysis, 'X')
            ylabel(app.UIDisplacementAnalysis, 'Y')
            app.UIDisplacementAnalysis.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIDisplacementAnalysis.Position = [917 13 300 185];

            % Create WAVEANALYSISINPUTSPanel
            app.WAVEANALYSISINPUTSPanel = uipanel(app.WaveAnalysis1Tab);
            app.WAVEANALYSISINPUTSPanel.Title = 'WAVE ANALYSIS - INPUTS';
            app.WAVEANALYSISINPUTSPanel.FontWeight = 'bold';
            app.WAVEANALYSISINPUTSPanel.Position = [15 237 269 369];

            % Create AreaoftheSpecimenmm2Label
            app.AreaoftheSpecimenmm2Label = uilabel(app.WAVEANALYSISINPUTSPanel);
            app.AreaoftheSpecimenmm2Label.HorizontalAlignment = 'right';
            app.AreaoftheSpecimenmm2Label.FontSize = 10;
            app.AreaoftheSpecimenmm2Label.FontWeight = 'bold';
            app.AreaoftheSpecimenmm2Label.Position = [51 91 141 22];
            app.AreaoftheSpecimenmm2Label.Text = 'Area of the Specimen (mm2)';

            % Create AreaofSpecimenWA
            app.AreaofSpecimenWA = uieditfield(app.WAVEANALYSISINPUTSPanel, 'numeric');
            app.AreaofSpecimenWA.FontWeight = 'bold';
            app.AreaofSpecimenWA.Position = [202 91 61 22];

            % Create LengthoftheSpecimenmmLabel
            app.LengthoftheSpecimenmmLabel = uilabel(app.WAVEANALYSISINPUTSPanel);
            app.LengthoftheSpecimenmmLabel.HorizontalAlignment = 'right';
            app.LengthoftheSpecimenmmLabel.FontSize = 10;
            app.LengthoftheSpecimenmmLabel.FontWeight = 'bold';
            app.LengthoftheSpecimenmmLabel.Position = [46 123 146 22];
            app.LengthoftheSpecimenmmLabel.Text = 'Length of the Specimen (mm)';

            % Create LengthofSpecimenWA
            app.LengthofSpecimenWA = uieditfield(app.WAVEANALYSISINPUTSPanel, 'numeric');
            app.LengthofSpecimenWA.FontWeight = 'bold';
            app.LengthofSpecimenWA.Position = [202 123 61 22];

            % Create ModulusofIncidentBarNmm2Label
            app.ModulusofIncidentBarNmm2Label = uilabel(app.WAVEANALYSISINPUTSPanel);
            app.ModulusofIncidentBarNmm2Label.HorizontalAlignment = 'right';
            app.ModulusofIncidentBarNmm2Label.FontSize = 10;
            app.ModulusofIncidentBarNmm2Label.FontWeight = 'bold';
            app.ModulusofIncidentBarNmm2Label.Position = [25 283 162 22];
            app.ModulusofIncidentBarNmm2Label.Text = 'Modulus of Incident Bar (N/mm2)';

            % Create ModulusofIncidentBar
            app.ModulusofIncidentBar = uieditfield(app.WAVEANALYSISINPUTSPanel, 'numeric');
            app.ModulusofIncidentBar.FontWeight = 'bold';
            app.ModulusofIncidentBar.Position = [202 283 61 22];

            % Create AreaofIncidentBarmm2Label
            app.AreaofIncidentBarmm2Label = uilabel(app.WAVEANALYSISINPUTSPanel);
            app.AreaofIncidentBarmm2Label.HorizontalAlignment = 'right';
            app.AreaofIncidentBarmm2Label.FontSize = 10;
            app.AreaofIncidentBarmm2Label.FontWeight = 'bold';
            app.AreaofIncidentBarmm2Label.Position = [54 315 133 22];
            app.AreaofIncidentBarmm2Label.Text = 'Area of Incident Bar (mm2)';

            % Create AreaofIncidentBar
            app.AreaofIncidentBar = uieditfield(app.WAVEANALYSISINPUTSPanel, 'numeric');
            app.AreaofIncidentBar.FontWeight = 'bold';
            app.AreaofIncidentBar.Position = [202 315 61 22];

            % Create AreaofTransmittedBarmm2Label
            app.AreaofTransmittedBarmm2Label = uilabel(app.WAVEANALYSISINPUTSPanel);
            app.AreaofTransmittedBarmm2Label.HorizontalAlignment = 'right';
            app.AreaofTransmittedBarmm2Label.FontSize = 10;
            app.AreaofTransmittedBarmm2Label.FontWeight = 'bold';
            app.AreaofTransmittedBarmm2Label.Position = [38 251 149 22];
            app.AreaofTransmittedBarmm2Label.Text = 'Area of Transmitted Bar(mm2)';

            % Create AreaofTransmittedBar
            app.AreaofTransmittedBar = uieditfield(app.WAVEANALYSISINPUTSPanel, 'numeric');
            app.AreaofTransmittedBar.FontWeight = 'bold';
            app.AreaofTransmittedBar.Position = [202 251 61 22];

            % Create ModulusofTransmittedBarNmm2Label
            app.ModulusofTransmittedBarNmm2Label = uilabel(app.WAVEANALYSISINPUTSPanel);
            app.ModulusofTransmittedBarNmm2Label.HorizontalAlignment = 'right';
            app.ModulusofTransmittedBarNmm2Label.FontSize = 10;
            app.ModulusofTransmittedBarNmm2Label.FontWeight = 'bold';
            app.ModulusofTransmittedBarNmm2Label.Position = [6 219 181 22];
            app.ModulusofTransmittedBarNmm2Label.Text = 'Modulus of Transmitted Bar (N/mm2)';

            % Create ModulusofTransmittedBar
            app.ModulusofTransmittedBar = uieditfield(app.WAVEANALYSISINPUTSPanel, 'numeric');
            app.ModulusofTransmittedBar.FontWeight = 'bold';
            app.ModulusofTransmittedBar.Position = [202 219 61 22];

            % Create CIncidentBarmsEditFieldLabel
            app.CIncidentBarmsEditFieldLabel = uilabel(app.WAVEANALYSISINPUTSPanel);
            app.CIncidentBarmsEditFieldLabel.HorizontalAlignment = 'right';
            app.CIncidentBarmsEditFieldLabel.FontSize = 10;
            app.CIncidentBarmsEditFieldLabel.FontWeight = 'bold';
            app.CIncidentBarmsEditFieldLabel.Position = [92 187 100 22];
            app.CIncidentBarmsEditFieldLabel.Text = 'C Incident Bar (m/s)';

            % Create CIncidentBar
            app.CIncidentBar = uieditfield(app.WAVEANALYSISINPUTSPanel, 'numeric');
            app.CIncidentBar.FontWeight = 'bold';
            app.CIncidentBar.Position = [202 187 61 22];

            % Create CTransmittedBarmsLabel
            app.CTransmittedBarmsLabel = uilabel(app.WAVEANALYSISINPUTSPanel);
            app.CTransmittedBarmsLabel.HorizontalAlignment = 'right';
            app.CTransmittedBarmsLabel.FontSize = 10;
            app.CTransmittedBarmsLabel.FontWeight = 'bold';
            app.CTransmittedBarmsLabel.Position = [74 155 118 22];
            app.CTransmittedBarmsLabel.Text = 'C Transmitted Bar (m/s)';

            % Create CTransmittedBar
            app.CTransmittedBar = uieditfield(app.WAVEANALYSISINPUTSPanel, 'numeric');
            app.CTransmittedBar.FontWeight = 'bold';
            app.CTransmittedBar.Position = [202 155 61 22];

            % Create CALCULATEWAVEANALYSISOP
            app.CALCULATEWAVEANALYSISOP = uibutton(app.WAVEANALYSISINPUTSPanel, 'push');
            app.CALCULATEWAVEANALYSISOP.ButtonPushedFcn = createCallbackFcn(app, @CALCULATEWAVEANALYSISOPButtonPushed, true);
            app.CALCULATEWAVEANALYSISOP.BackgroundColor = [0.9294 0.6941 0.1255];
            app.CALCULATEWAVEANALYSISOP.FontSize = 10;
            app.CALCULATEWAVEANALYSISOP.FontWeight = 'bold';
            app.CALCULATEWAVEANALYSISOP.Position = [43 14 180 22];
            app.CALCULATEWAVEANALYSISOP.Text = 'CALCULATE WAVE ANALYSIS O/P';

            % Create TimePeriodtsLabel
            app.TimePeriodtsLabel = uilabel(app.WAVEANALYSISINPUTSPanel);
            app.TimePeriodtsLabel.HorizontalAlignment = 'right';
            app.TimePeriodtsLabel.FontSize = 10;
            app.TimePeriodtsLabel.FontWeight = 'bold';
            app.TimePeriodtsLabel.Position = [101 59 91 22];
            app.TimePeriodtsLabel.Text = 'Time Period Δt (s)';

            % Create TimePeriod
            app.TimePeriod = uieditfield(app.WAVEANALYSISINPUTSPanel, 'numeric');
            app.TimePeriod.FontWeight = 'bold';
            app.TimePeriod.Position = [202 59 61 22];

            % Create WaveAnalysis2Tab
            app.WaveAnalysis2Tab = uitab(app.TabGroup);
            app.WaveAnalysis2Tab.Title = 'Wave Analysis-2';
            app.WaveAnalysis2Tab.BackgroundColor = [0.902 0.902 0.902];

            % Create UIForceDisplacement
            app.UIForceDisplacement = uiaxes(app.WaveAnalysis2Tab);
            title(app.UIForceDisplacement, 'Force-Displacement')
            xlabel(app.UIForceDisplacement, 'X')
            ylabel(app.UIForceDisplacement, 'Y')
            app.UIForceDisplacement.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UIForceDisplacement.FontWeight = 'bold';
            app.UIForceDisplacement.Position = [264 405 300 185];

            % Create UICompressiveStressStrain
            app.UICompressiveStressStrain = uiaxes(app.WaveAnalysis2Tab);
            title(app.UICompressiveStressStrain, 'Compressive Stress-Strain')
            xlabel(app.UICompressiveStressStrain, 'X')
            ylabel(app.UICompressiveStressStrain, 'Y')
            app.UICompressiveStressStrain.PlotBoxAspectRatio = [1.96850393700787 1 1];
            app.UICompressiveStressStrain.FontWeight = 'bold';
            app.UICompressiveStressStrain.Position = [589 405 300 185];

            % Create OUTPUTSWAVEANALYSISPanel
            app.OUTPUTSWAVEANALYSISPanel = uipanel(app.WaveAnalysis2Tab);
            app.OUTPUTSWAVEANALYSISPanel.Title = 'OUTPUTS - WAVE ANALYSIS';
            app.OUTPUTSWAVEANALYSISPanel.FontWeight = 'bold';
            app.OUTPUTSWAVEANALYSISPanel.Position = [21 463 188 113];

            % Create MaxForceEditFieldLabel
            app.MaxForceEditFieldLabel = uilabel(app.OUTPUTSWAVEANALYSISPanel);
            app.MaxForceEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxForceEditFieldLabel.FontWeight = 'bold';
            app.MaxForceEditFieldLabel.Position = [3 53 65 22];
            app.MaxForceEditFieldLabel.Text = 'Max Force';

            % Create MaxForceEditField
            app.MaxForceEditField = uieditfield(app.OUTPUTSWAVEANALYSISPanel, 'numeric');
            app.MaxForceEditField.FontWeight = 'bold';
            app.MaxForceEditField.Position = [83 53 100 22];

            % Create MaxStressEditFieldLabel
            app.MaxStressEditFieldLabel = uilabel(app.OUTPUTSWAVEANALYSISPanel);
            app.MaxStressEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxStressEditFieldLabel.FontWeight = 'bold';
            app.MaxStressEditFieldLabel.Position = [2 21 69 22];
            app.MaxStressEditFieldLabel.Text = 'Max Stress';

            % Create MaxStressEditField
            app.MaxStressEditField = uieditfield(app.OUTPUTSWAVEANALYSISPanel, 'numeric');
            app.MaxStressEditField.FontWeight = 'bold';
            app.MaxStressEditField.Position = [86 21 100 22];

            % Show the figure after all components are created
            app.SHPBWaveAnalysis.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = SHPB_WAVE_ANALYSIS

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.SHPBWaveAnalysis)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.SHPBWaveAnalysis)
        end
    end
end