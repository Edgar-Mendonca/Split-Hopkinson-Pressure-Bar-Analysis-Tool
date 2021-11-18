classdef SHPB_WAVE_CLIPPING < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        EMSHPBWAVECLIPUIFigure         matlab.ui.Figure
        FileMenu                       matlab.ui.container.Menu
        OpenMenu                       matlab.ui.container.Menu
        ExitMenu                       matlab.ui.container.Menu
        EditMenu                       matlab.ui.container.Menu
        ResetMenu                      matlab.ui.container.Menu
        TabGroup                       matlab.ui.container.TabGroup
        RawDataInputTab                matlab.ui.container.Tab
        ReverseTransmittedCheckBox     matlab.ui.control.CheckBox
        ReverseReflectedCheckBox       matlab.ui.control.CheckBox
        ReverseIncidentCheckBox        matlab.ui.control.CheckBox
        PlotTransmittedWaveButton      matlab.ui.control.Button
        PlotReflectedWaveButton        matlab.ui.control.Button
        PlotIncidentWaveButton         matlab.ui.control.Button
        SelectTransmittedPlotButton    matlab.ui.control.Button
        SelectReflectedPlotButton      matlab.ui.control.Button
        SelectIncidentPlotButton       matlab.ui.control.Button
        GraphAxesInputRawDataPanel     matlab.ui.container.Panel
        TransmittedBarDataRawY         matlab.ui.control.DropDown
        TransmittedBarDataYDropDownLabel  matlab.ui.control.Label
        IncidentBarDataRawY            matlab.ui.control.DropDown
        IncidentBarDataYDropDownLabel  matlab.ui.control.Label
        TimeDataRawX                   matlab.ui.control.DropDown
        TimeDataXDropDownLabel         matlab.ui.control.Label
        UITransmittedVoltageEdited     matlab.ui.control.UIAxes
        UIReflectedVoltageEdited       matlab.ui.control.UIAxes
        UIIncidentVoltageEdited        matlab.ui.control.UIAxes
        UITransmittedRawSignal         matlab.ui.control.UIAxes
        UIIncidentRawSignal            matlab.ui.control.UIAxes
        TheoreticalCalculationsTab     matlab.ui.container.Tab
    end

    
    properties (Access = private)
        t % Description
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)

        end

        % Close request function: EMSHPBWAVECLIPUIFigure
        function EMSHPBWAVECLIPUIFigureCloseRequest(app, event)
delete(app)

        end

        % Menu selected function: OpenMenu
        function OpenMenuSelected(app, event)
            [file, path] = uigetfile('*.xlsx; *.csv');
            if isequal(file,0)
                msgbox('Please input a spreadsheet file','Error','error');
            else
                app.t = readtable(fullfile(path, file));
                
                app.TimeDataRawX.Items = app.t.Properties.VariableNames;
                app.IncidentBarDataRawY.Items = app.t.Properties.VariableNames;
                app.TransmittedBarDataRawY.Items = app.t.Properties.VariableNames;
               
                plot(app.UIIncidentRawSignal, app.t.(app.TimeDataRawX.Value), app.t.(app.IncidentBarDataRawY.Value));
                plot(app.UITransmittedRawSignal, app.t.(app.TimeDataRawX.Value), app.t.(app.TransmittedBarDataRawY.Value));
            end
        end

        % Value changed function: TimeDataRawX
        function TimeDataRawXValueChanged(app, event)
value = app.TimeDataRawX.Value;

        end

        % Value changed function: IncidentBarDataRawY
        function IncidentBarDataRawYValueChanged(app, event)
            value = app.IncidentBarDataRawY.Value;
            
            plot(app.UIIncidentRawSignal, app.t.(app.TimeDataRawX.Value), app.t.(app.IncidentBarDataRawY.Value));
            
        end

        % Value changed function: TransmittedBarDataRawY
        function TransmittedBarDataRawYValueChanged(app, event)
            value = app.TransmittedBarDataRawY.Value;
            
            plot(app.UITransmittedRawSignal, app.t.(app.TimeDataRawX.Value), app.t.(app.TransmittedBarDataRawY.Value));
            
        end

        % Button pushed function: SelectIncidentPlotButton
        function SelectIncidentPlotButtonPushed(app, event)
            plot(app.t.(app.TimeDataRawX.Value), app.t.(app.IncidentBarDataRawY.Value));
            
        end

        % Button pushed function: SelectReflectedPlotButton
        function SelectReflectedPlotButtonPushed(app, event)
            plot(app.t.(app.TimeDataRawX.Value), app.t.(app.IncidentBarDataRawY.Value));
            
        end

        % Button pushed function: SelectTransmittedPlotButton
        function SelectTransmittedPlotButtonPushed(app, event)
            plot(app.t.(app.TimeDataRawX.Value), app.t.(app.TransmittedBarDataRawY.Value));
            
        end

        % Button pushed function: PlotIncidentWaveButton
        function PlotIncidentWaveButtonPushed(app, event)
            Idata = evalin('base', 'incident');
            xi = Idata(:,1);
            yi = Idata(:,2);
            
            plot(app.UIIncidentVoltageEdited, xi, yi);
            
            xim =min(xi);
            xisub = xi - xim;
            
            yif = Idata(:,1);
            yisub = yi - yif;
            
            plot(app.UIIncidentVoltageEdited, xisub, yisub);
            
            value = app.ReverseIncidentCheckBox.Value;
            
            switch value
                case 0 
                    plot(app.UIIncidentVoltageEdited, xisub, yisub);
                    M1=xisub;
                    M2=yisub;
                    M=[M1,M2];
                    
                    [file,path] = uiputfile('*.csv');
                    if isequal(file,0)
                        msgbox('Please output a spreadsheet file','Error','error');
                    else
                        filename = fullfile(path,file);
                        csvwrite(filename,M);
                    end
                case 1
                    plot(app.UIIncidentVoltageEdited, xisub, (-1*yisub));
                    M1=xisub;
                    M2=(-1*yisub);
                    M=[M1,M2];
                    [file,path] = uiputfile('*.csv');
                    if isequal(file,0)
                        msgbox('Please output a spreadsheet file','Error','error');
                    else
                        filename = fullfile(path,file);
                        csvwrite(filename,M);
                    end
            end
            
           
        end

        % Button pushed function: PlotReflectedWaveButton
        function PlotReflectedWaveButtonPushed(app, event)
            Rdata = evalin('base', 'reflected');
            xr = Rdata(:,1);
            yr = Rdata(:,2);
            
            plot(app.UIReflectedVoltageEdited, xr, yr);
            
            xrm =min(xr);
            xrsub = xr - xrm;
            
            yrf = Rdata(:,1);
            yrsub = yr - yrf;
            
            plot(app.UIReflectedVoltageEdited, xrsub, yrsub);
            
            value = app.ReverseReflectedCheckBox.Value;
            
            switch value
                case 0 
                    plot(app.UIReflectedVoltageEdited, xrsub, yrsub);
                    M1=xrsub;
                    M2=yrsub;
                    M=[M1,M2];
                    [file,path] = uiputfile('*.csv');
                    if isequal(file,0)
                        msgbox('Please output a spreadsheet file','Error','error');
                    else
                        filename = fullfile(path,file);
                        csvwrite(filename,M);
                    end
                case 1
                    plot(app.UIReflectedVoltageEdited, xrsub, (-1*yrsub));
                    M1=xrsub;
                    M2=(-1*yrsub);
                    M=[M1,M2];
                    [file,path] = uiputfile('*.csv');
                    if isequal(file,0)
                        msgbox('Please output a spreadsheet file','Error','error');
                    else
                        filename = fullfile(path,file);
                        csvwrite(filename,M);
                    end
            end
                    
        end

        % Button pushed function: PlotTransmittedWaveButton
        function PlotTransmittedWaveButtonPushed(app, event)
            Tdata = evalin('base', 'transmitted');
            xt = Tdata(:,1);
            yt = Tdata(:,2);
            
            plot(app.UITransmittedVoltageEdited, xt, yt);
            
            xtm =min(xt);
            xtsub = xt - xtm;
            
            ytf = Tdata(:,1);
            ytsub = yt - ytf;
            
            plot(app.UITransmittedVoltageEdited, xtsub, ytsub);
            
            value = app.ReverseTransmittedCheckBox.Value;
            
            switch value
                case 0
                    plot(app.UITransmittedVoltageEdited, xtsub, ytsub);
                    M1=xtsub;
                    M2=ytsub;
                    M=[M1,M2];
                    [file,path] = uiputfile('*.csv');
                    if isequal(file,0)
                        msgbox('Please output a spreadsheet file','Error','error');
                    else
                        filename = fullfile(path,file);
                        csvwrite(filename,M);
                    end
                case 1 
                    plot(app.UITransmittedVoltageEdited, xtsub, (-1*ytsub));
                    M1=xtsub;
                    M2=(-1*ytsub);
                    M=[M1,M2];
                    [file,path] = uiputfile('*.csv');
                    if isequal(file,0)
                        msgbox('Please output a spreadsheet file','Error','error');
                    else
                        filename = fullfile(path,file);
                        csvwrite(filename,M);
                    end
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create EMSHPBWAVECLIPUIFigure and hide until all components are created
            app.EMSHPBWAVECLIPUIFigure = uifigure('Visible', 'off');
            app.EMSHPBWAVECLIPUIFigure.Color = [0.902 0.902 0.902];
            app.EMSHPBWAVECLIPUIFigure.Position = [100 100 1100 607];
            app.EMSHPBWAVECLIPUIFigure.Name = 'EM - SHPB WAVE CLIP';
            app.EMSHPBWAVECLIPUIFigure.CloseRequestFcn = createCallbackFcn(app, @EMSHPBWAVECLIPUIFigureCloseRequest, true);

            % Create FileMenu
            app.FileMenu = uimenu(app.EMSHPBWAVECLIPUIFigure);
            app.FileMenu.Text = 'File';

            % Create OpenMenu
            app.OpenMenu = uimenu(app.FileMenu);
            app.OpenMenu.MenuSelectedFcn = createCallbackFcn(app, @OpenMenuSelected, true);
            app.OpenMenu.Text = 'Open';

            % Create ExitMenu
            app.ExitMenu = uimenu(app.FileMenu);
            app.ExitMenu.Text = 'Exit';

            % Create EditMenu
            app.EditMenu = uimenu(app.EMSHPBWAVECLIPUIFigure);
            app.EditMenu.Text = 'Edit';

            % Create ResetMenu
            app.ResetMenu = uimenu(app.EditMenu);
            app.ResetMenu.Text = 'Reset';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.EMSHPBWAVECLIPUIFigure);
            app.TabGroup.Position = [1 10 1086 598];

            % Create RawDataInputTab
            app.RawDataInputTab = uitab(app.TabGroup);
            app.RawDataInputTab.Title = 'Raw Data Input';
            app.RawDataInputTab.BackgroundColor = [0.902 0.902 0.902];

            % Create UIIncidentRawSignal
            app.UIIncidentRawSignal = uiaxes(app.RawDataInputTab);
            title(app.UIIncidentRawSignal, 'Incident Raw Signal ')
            xlabel(app.UIIncidentRawSignal, 'Time (s)')
            ylabel(app.UIIncidentRawSignal, 'Incident Voltage (V)')
            app.UIIncidentRawSignal.PlotBoxAspectRatio = [1.94210526315789 1 1];
            app.UIIncidentRawSignal.FontWeight = 'bold';
            app.UIIncidentRawSignal.Position = [242 324 416 245];

            % Create UITransmittedRawSignal
            app.UITransmittedRawSignal = uiaxes(app.RawDataInputTab);
            title(app.UITransmittedRawSignal, 'Incident Raw Signal ')
            xlabel(app.UITransmittedRawSignal, 'Time (s)')
            ylabel(app.UITransmittedRawSignal, 'Incident Voltage (V)')
            app.UITransmittedRawSignal.PlotBoxAspectRatio = [1.94210526315789 1 1];
            app.UITransmittedRawSignal.FontWeight = 'bold';
            app.UITransmittedRawSignal.Position = [664 324 416 245];

            % Create UIIncidentVoltageEdited
            app.UIIncidentVoltageEdited = uiaxes(app.RawDataInputTab);
            title(app.UIIncidentVoltageEdited, 'Incident Voltage')
            xlabel(app.UIIncidentVoltageEdited, 'Time')
            ylabel(app.UIIncidentVoltageEdited, 'Incident Voltage')
            app.UIIncidentVoltageEdited.PlotBoxAspectRatio = [1.94615384615385 1 1];
            app.UIIncidentVoltageEdited.FontWeight = 'bold';
            app.UIIncidentVoltageEdited.Position = [154 52 300 185];

            % Create UIReflectedVoltageEdited
            app.UIReflectedVoltageEdited = uiaxes(app.RawDataInputTab);
            title(app.UIReflectedVoltageEdited, 'Reflected Voltage')
            xlabel(app.UIReflectedVoltageEdited, 'Time')
            ylabel(app.UIReflectedVoltageEdited, 'Reflected Voltage')
            app.UIReflectedVoltageEdited.PlotBoxAspectRatio = [1.94615384615385 1 1];
            app.UIReflectedVoltageEdited.FontWeight = 'bold';
            app.UIReflectedVoltageEdited.Position = [470 52 300 185];

            % Create UITransmittedVoltageEdited
            app.UITransmittedVoltageEdited = uiaxes(app.RawDataInputTab);
            title(app.UITransmittedVoltageEdited, 'Transmitted Voltage')
            xlabel(app.UITransmittedVoltageEdited, 'Time')
            ylabel(app.UITransmittedVoltageEdited, 'TransmittedmVoltage')
            app.UITransmittedVoltageEdited.PlotBoxAspectRatio = [1.94615384615385 1 1];
            app.UITransmittedVoltageEdited.FontWeight = 'bold';
            app.UITransmittedVoltageEdited.Position = [782 52 300 185];

            % Create GraphAxesInputRawDataPanel
            app.GraphAxesInputRawDataPanel = uipanel(app.RawDataInputTab);
            app.GraphAxesInputRawDataPanel.Title = 'Graph Axes Input (Raw Data)';
            app.GraphAxesInputRawDataPanel.FontWeight = 'bold';
            app.GraphAxesInputRawDataPanel.Position = [9 434 212 130];

            % Create TimeDataXDropDownLabel
            app.TimeDataXDropDownLabel = uilabel(app.GraphAxesInputRawDataPanel);
            app.TimeDataXDropDownLabel.HorizontalAlignment = 'right';
            app.TimeDataXDropDownLabel.FontSize = 10;
            app.TimeDataXDropDownLabel.FontWeight = 'bold';
            app.TimeDataXDropDownLabel.Position = [62 75 69 22];
            app.TimeDataXDropDownLabel.Text = 'Time Data (X)';

            % Create TimeDataRawX
            app.TimeDataRawX = uidropdown(app.GraphAxesInputRawDataPanel);
            app.TimeDataRawX.ValueChangedFcn = createCallbackFcn(app, @TimeDataRawXValueChanged, true);
            app.TimeDataRawX.FontSize = 10;
            app.TimeDataRawX.FontWeight = 'bold';
            app.TimeDataRawX.Position = [146 75 50 22];

            % Create IncidentBarDataYDropDownLabel
            app.IncidentBarDataYDropDownLabel = uilabel(app.GraphAxesInputRawDataPanel);
            app.IncidentBarDataYDropDownLabel.HorizontalAlignment = 'right';
            app.IncidentBarDataYDropDownLabel.FontSize = 10;
            app.IncidentBarDataYDropDownLabel.FontWeight = 'bold';
            app.IncidentBarDataYDropDownLabel.Position = [27 43 104 22];
            app.IncidentBarDataYDropDownLabel.Text = 'Incident Bar Data (Y)';

            % Create IncidentBarDataRawY
            app.IncidentBarDataRawY = uidropdown(app.GraphAxesInputRawDataPanel);
            app.IncidentBarDataRawY.ValueChangedFcn = createCallbackFcn(app, @IncidentBarDataRawYValueChanged, true);
            app.IncidentBarDataRawY.FontSize = 10;
            app.IncidentBarDataRawY.FontWeight = 'bold';
            app.IncidentBarDataRawY.Position = [146 43 50 22];

            % Create TransmittedBarDataYDropDownLabel
            app.TransmittedBarDataYDropDownLabel = uilabel(app.GraphAxesInputRawDataPanel);
            app.TransmittedBarDataYDropDownLabel.HorizontalAlignment = 'right';
            app.TransmittedBarDataYDropDownLabel.FontSize = 10;
            app.TransmittedBarDataYDropDownLabel.FontWeight = 'bold';
            app.TransmittedBarDataYDropDownLabel.Position = [8 9 122 22];
            app.TransmittedBarDataYDropDownLabel.Text = {'Transmitted Bar Data (Y)'; ''};

            % Create TransmittedBarDataRawY
            app.TransmittedBarDataRawY = uidropdown(app.GraphAxesInputRawDataPanel);
            app.TransmittedBarDataRawY.ValueChangedFcn = createCallbackFcn(app, @TransmittedBarDataRawYValueChanged, true);
            app.TransmittedBarDataRawY.FontSize = 10;
            app.TransmittedBarDataRawY.FontWeight = 'bold';
            app.TransmittedBarDataRawY.Position = [145 9 51 22];

            % Create SelectIncidentPlotButton
            app.SelectIncidentPlotButton = uibutton(app.RawDataInputTab, 'push');
            app.SelectIncidentPlotButton.ButtonPushedFcn = createCallbackFcn(app, @SelectIncidentPlotButtonPushed, true);
            app.SelectIncidentPlotButton.BackgroundColor = [0.0745 0.6235 1];
            app.SelectIncidentPlotButton.FontWeight = 'bold';
            app.SelectIncidentPlotButton.Position = [242 286 126 22];
            app.SelectIncidentPlotButton.Text = 'Select Incident Plot';

            % Create SelectReflectedPlotButton
            app.SelectReflectedPlotButton = uibutton(app.RawDataInputTab, 'push');
            app.SelectReflectedPlotButton.ButtonPushedFcn = createCallbackFcn(app, @SelectReflectedPlotButtonPushed, true);
            app.SelectReflectedPlotButton.BackgroundColor = [1 0.4118 0.1608];
            app.SelectReflectedPlotButton.FontWeight = 'bold';
            app.SelectReflectedPlotButton.Position = [553 286 134 22];
            app.SelectReflectedPlotButton.Text = 'Select Reflected Plot';

            % Create SelectTransmittedPlotButton
            app.SelectTransmittedPlotButton = uibutton(app.RawDataInputTab, 'push');
            app.SelectTransmittedPlotButton.ButtonPushedFcn = createCallbackFcn(app, @SelectTransmittedPlotButtonPushed, true);
            app.SelectTransmittedPlotButton.BackgroundColor = [0.3922 0.8314 0.0745];
            app.SelectTransmittedPlotButton.FontWeight = 'bold';
            app.SelectTransmittedPlotButton.Position = [856 286 148 22];
            app.SelectTransmittedPlotButton.Text = 'Select Transmitted Plot';

            % Create PlotIncidentWaveButton
            app.PlotIncidentWaveButton = uibutton(app.RawDataInputTab, 'push');
            app.PlotIncidentWaveButton.ButtonPushedFcn = createCallbackFcn(app, @PlotIncidentWaveButtonPushed, true);
            app.PlotIncidentWaveButton.BackgroundColor = [0.0745 0.6235 1];
            app.PlotIncidentWaveButton.FontWeight = 'bold';
            app.PlotIncidentWaveButton.Position = [246 255 122 22];
            app.PlotIncidentWaveButton.Text = 'Plot Incident Wave';

            % Create PlotReflectedWaveButton
            app.PlotReflectedWaveButton = uibutton(app.RawDataInputTab, 'push');
            app.PlotReflectedWaveButton.ButtonPushedFcn = createCallbackFcn(app, @PlotReflectedWaveButtonPushed, true);
            app.PlotReflectedWaveButton.BackgroundColor = [1 0.4118 0.1608];
            app.PlotReflectedWaveButton.FontWeight = 'bold';
            app.PlotReflectedWaveButton.Position = [557 255 130 22];
            app.PlotReflectedWaveButton.Text = 'Plot Reflected Wave';

            % Create PlotTransmittedWaveButton
            app.PlotTransmittedWaveButton = uibutton(app.RawDataInputTab, 'push');
            app.PlotTransmittedWaveButton.ButtonPushedFcn = createCallbackFcn(app, @PlotTransmittedWaveButtonPushed, true);
            app.PlotTransmittedWaveButton.BackgroundColor = [0.3922 0.8314 0.0745];
            app.PlotTransmittedWaveButton.FontWeight = 'bold';
            app.PlotTransmittedWaveButton.Position = [860 255 144 22];
            app.PlotTransmittedWaveButton.Text = 'Plot Transmitted Wave';

            % Create ReverseIncidentCheckBox
            app.ReverseIncidentCheckBox = uicheckbox(app.RawDataInputTab);
            app.ReverseIncidentCheckBox.Text = 'Reverse Incident';
            app.ReverseIncidentCheckBox.FontWeight = 'bold';
            app.ReverseIncidentCheckBox.Position = [246 20 118 22];

            % Create ReverseReflectedCheckBox
            app.ReverseReflectedCheckBox = uicheckbox(app.RawDataInputTab);
            app.ReverseReflectedCheckBox.Text = 'Reverse Reflected';
            app.ReverseReflectedCheckBox.FontWeight = 'bold';
            app.ReverseReflectedCheckBox.Position = [557 20 126 22];

            % Create ReverseTransmittedCheckBox
            app.ReverseTransmittedCheckBox = uicheckbox(app.RawDataInputTab);
            app.ReverseTransmittedCheckBox.Text = 'Reverse Transmitted';
            app.ReverseTransmittedCheckBox.FontWeight = 'bold';
            app.ReverseTransmittedCheckBox.Position = [860 20 140 22];

            % Create TheoreticalCalculationsTab
            app.TheoreticalCalculationsTab = uitab(app.TabGroup);
            app.TheoreticalCalculationsTab.Title = 'Theoretical Calculations';

            % Show the figure after all components are created
            app.EMSHPBWAVECLIPUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = SHPB_WAVE_CLIPPING

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.EMSHPBWAVECLIPUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.EMSHPBWAVECLIPUIFigure)
        end
    end
end