/*
 * Copyright (C) 2025 KamiKaonashi
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.lineageos.settings.nervstuff;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.SwitchPreference;

import com.android.settingslib.widget.SettingsBasePreferenceFragment;

import org.lineageos.settings.R;
import org.lineageos.settings.kernelmanager.KernelManagerActivity;
import org.lineageos.settings.speaker.ClearSpeakerActivity;
import org.lineageos.settings.resolution.ResolutionActivity;
import org.lineageos.settings.resolution.SystemResolutionActivity;
import org.lineageos.settings.thermal.ThermalActivity;
import org.lineageos.settings.useless.UselessActivity;

public class NervStuffFragment extends SettingsBasePreferenceFragment {

    private static final String KEY_USELESS = "useless";
    private static final String KEY_KERNEL_MANAGER = "kernel_manager";
    private static final String KEY_THERMAL = "thermal";
    private static final String KEY_CLEAR_SPEAKER = "clear_speaker";
    private static final String KEY_RESOLUTION = "resolution";
    private static final String KEY_SYSTEM_RESOLUTION = "system_resolution";

    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        setPreferencesFromResource(R.xml.nerv_stuff_settings, rootKey);

        Preference resolutionPref = findPreference(KEY_RESOLUTION);
        if (resolutionPref != null) {
            resolutionPref.setOnPreferenceClickListener(preference -> {
                startActivity(new Intent(getActivity(), ResolutionActivity.class));
                return true;
            });
        }

        Preference systemResolutionPref = findPreference(KEY_SYSTEM_RESOLUTION);
        if (systemResolutionPref != null) {
            systemResolutionPref.setOnPreferenceClickListener(preference -> {
                startActivity(new Intent(getActivity(), SystemResolutionActivity.class));
                return true;
            });
        }
        
        Preference clearSpeakerPref = findPreference(KEY_CLEAR_SPEAKER);
        if (clearSpeakerPref != null) {
            clearSpeakerPref.setOnPreferenceClickListener(preference -> {
                startActivity(new Intent(getActivity(), ClearSpeakerActivity.class));
                return true;
            });
        }

        // System
        Preference thermalPref = findPreference(KEY_THERMAL);
        if (thermalPref != null) {
            thermalPref.setOnPreferenceClickListener(preference -> {
                startActivity(new Intent(getActivity(), ThermalActivity.class));
                return true;
            });
        }

        Preference kernelManagerPref = findPreference(KEY_KERNEL_MANAGER);
        if (kernelManagerPref != null) {
            kernelManagerPref.setOnPreferenceClickListener(preference -> {
                startActivity(new Intent(getActivity(), KernelManagerActivity.class));
                return true;
            });
        }

        Preference uselessPref = findPreference(KEY_USELESS);
        if (uselessPref != null) {
            uselessPref.setOnPreferenceClickListener(preference -> {
                startActivity(new Intent(getActivity(), UselessActivity.class));
                return true;
            });
        }
    }
}
